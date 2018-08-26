# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.application.Debug:
PostBuild.core.Debug: /Users/rsalm/Projects/Ivina/bin/Debug/application
/Users/rsalm/Projects/Ivina/bin/Debug/application:\
	/Users/rsalm/Projects/Ivina/lib/Debug/libcore.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/Debug/application


PostBuild.core.Debug:
PostBuild.Object.Debug: /Users/rsalm/Projects/Ivina/lib/Debug/libcore.a
/Users/rsalm/Projects/Ivina/lib/Debug/libcore.a:\
	/Users/rsalm/Projects/Ivina/build/src/core/Object/Application.build/Debug/Object.build/Objects-normal/libObject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/Debug/libcore.a


PostBuild.Object.Debug:
PostBuild.gtest-object.Debug:
PostBuild.gtest.Debug: /Users/rsalm/Projects/Ivina/bin/Debug/gtest-object
PostBuild.core.Debug: /Users/rsalm/Projects/Ivina/bin/Debug/gtest-object
/Users/rsalm/Projects/Ivina/bin/Debug/gtest-object:\
	/Users/rsalm/Projects/Ivina/lib/Debug/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/Debug/libcore.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/Debug/gtest-object


PostBuild.gtest.Debug:
/Users/rsalm/Projects/Ivina/lib/Debug/libgtest.a:
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/Debug/libgtest.a


PostBuild.gmock.Debug:
/Users/rsalm/Projects/Ivina/lib/Debug/libgmock.a:
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/Debug/libgmock.a


PostBuild.application.Release:
PostBuild.core.Release: /Users/rsalm/Projects/Ivina/bin/Release/application
/Users/rsalm/Projects/Ivina/bin/Release/application:\
	/Users/rsalm/Projects/Ivina/lib/Release/libcore.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/Release/application


PostBuild.core.Release:
PostBuild.Object.Release: /Users/rsalm/Projects/Ivina/lib/Release/libcore.a
/Users/rsalm/Projects/Ivina/lib/Release/libcore.a:\
	/Users/rsalm/Projects/Ivina/build/src/core/Object/Application.build/Release/Object.build/Objects-normal/libObject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/Release/libcore.a


PostBuild.Object.Release:
PostBuild.gtest-object.Release:
PostBuild.gtest.Release: /Users/rsalm/Projects/Ivina/bin/Release/gtest-object
PostBuild.core.Release: /Users/rsalm/Projects/Ivina/bin/Release/gtest-object
/Users/rsalm/Projects/Ivina/bin/Release/gtest-object:\
	/Users/rsalm/Projects/Ivina/lib/Release/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/Release/libcore.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/Release/gtest-object


PostBuild.gtest.Release:
/Users/rsalm/Projects/Ivina/lib/Release/libgtest.a:
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/Release/libgtest.a


PostBuild.gmock.Release:
/Users/rsalm/Projects/Ivina/lib/Release/libgmock.a:
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/Release/libgmock.a


PostBuild.application.MinSizeRel:
PostBuild.core.MinSizeRel: /Users/rsalm/Projects/Ivina/bin/MinSizeRel/application
/Users/rsalm/Projects/Ivina/bin/MinSizeRel/application:\
	/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libcore.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/MinSizeRel/application


PostBuild.core.MinSizeRel:
PostBuild.Object.MinSizeRel: /Users/rsalm/Projects/Ivina/lib/MinSizeRel/libcore.a
/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libcore.a:\
	/Users/rsalm/Projects/Ivina/build/src/core/Object/Application.build/MinSizeRel/Object.build/Objects-normal/libObject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/MinSizeRel/libcore.a


PostBuild.Object.MinSizeRel:
PostBuild.gtest-object.MinSizeRel:
PostBuild.gtest.MinSizeRel: /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-object
PostBuild.core.MinSizeRel: /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-object
/Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-object:\
	/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libcore.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-object


PostBuild.gtest.MinSizeRel:
/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libgtest.a:
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/MinSizeRel/libgtest.a


PostBuild.gmock.MinSizeRel:
/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libgmock.a:
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/MinSizeRel/libgmock.a


PostBuild.application.RelWithDebInfo:
PostBuild.core.RelWithDebInfo: /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/application
/Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/application:\
	/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libcore.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/application


PostBuild.core.RelWithDebInfo:
PostBuild.Object.RelWithDebInfo: /Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libcore.a
/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libcore.a:\
	/Users/rsalm/Projects/Ivina/build/src/core/Object/Application.build/RelWithDebInfo/Object.build/Objects-normal/libObject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libcore.a


PostBuild.Object.RelWithDebInfo:
PostBuild.gtest-object.RelWithDebInfo:
PostBuild.gtest.RelWithDebInfo: /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-object
PostBuild.core.RelWithDebInfo: /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-object
/Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-object:\
	/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libcore.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-object


PostBuild.gtest.RelWithDebInfo:
/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libgtest.a:
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libgtest.a


PostBuild.gmock.RelWithDebInfo:
/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libgmock.a:
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libgmock.a




# For each target create a dummy ruleso the target does not have to exist
/Users/rsalm/Projects/Ivina/build/src/core/Object/Application.build/Debug/Object.build/Objects-normal/libObject.a:
/Users/rsalm/Projects/Ivina/build/src/core/Object/Application.build/MinSizeRel/Object.build/Objects-normal/libObject.a:
/Users/rsalm/Projects/Ivina/build/src/core/Object/Application.build/RelWithDebInfo/Object.build/Objects-normal/libObject.a:
/Users/rsalm/Projects/Ivina/build/src/core/Object/Application.build/Release/Object.build/Objects-normal/libObject.a:
/Users/rsalm/Projects/Ivina/lib/Debug/libcore.a:
/Users/rsalm/Projects/Ivina/lib/Debug/libgtest.a:
/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libcore.a:
/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libgtest.a:
/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libcore.a:
/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libgtest.a:
/Users/rsalm/Projects/Ivina/lib/Release/libcore.a:
/Users/rsalm/Projects/Ivina/lib/Release/libgtest.a:
