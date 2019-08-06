
tmpName='TemplateProject'
echo "hello,input project name:"
read projectName
echo make project: $projectName
rm -rf $projectName
cp -r TemplateProject $projectName
mv -f $projectName/$tmpName $projectName/$projectName 
mv -f $projectName/${tmpName}.xcodeproj $projectName/$projectName.xcodeproj
mv -f $projectName/${tmpName}.xcworkspace $projectName/$projectName.xcworkspace

proj=$projectName/$projectName.xcodeproj/project.pbxproj 
sed "s/${tmpName}/${projectName}/g" $proj > bak 
mv bak $proj

xcwork=$projectName/$projectName.xcworkspace/contents.xcworkspacedata 
sed "s/${tmpName}/${projectName}/g" $xcwork > bak 
mv bak $xcwork 

fastfile="${projectName}/fastlane/Fastfile"
sed "s/${tmpName}/${projectName}/g" $fastfile  > bak 
mv bak $fastfile

testDir="${projectName}/${projectName}Tests"
mv "${projectName}/${tmpName}Tests" ${testDir}
testCaseDir="${testDir}/${projectName}Tests.swift"
mv "${testDir}/${tmpName}Tests.swift" $testCaseDir

sed "s/${tmpName}/${projectName}/g" $testCaseDir  > bak 
mv bak $testCaseDir

podfile="${projectName}/Podfile" 
sed "s/${tmpName}/${projectName}/g" $podfile  > bak 
mv bak $podfile
cd ${projectName}
echo project is ok
echo pod install
pod install 
echo open project
open $projectName.xcworkspace