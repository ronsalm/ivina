# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.application.Debug:
PostBuild.counters.Debug: /Users/rsalm/Projects/Ivina/bin/Debug/application
PostBuild.object.Debug: /Users/rsalm/Projects/Ivina/bin/Debug/application
/Users/rsalm/Projects/Ivina/bin/Debug/application:\
	/Users/rsalm/Projects/Ivina/lib/Debug/libcounters.a\
	/Users/rsalm/Projects/Ivina/lib/Debug/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/Debug/application


PostBuild.object.Debug:
/Users/rsalm/Projects/Ivina/lib/Debug/libobject.a:
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/Debug/libobject.a


PostBuild.gtest-object.Debug:
PostBuild.gtest.Debug: /Users/rsalm/Projects/Ivina/bin/Debug/gtest-object
PostBuild.object.Debug: /Users/rsalm/Projects/Ivina/bin/Debug/gtest-object
/Users/rsalm/Projects/Ivina/bin/Debug/gtest-object:\
	/Users/rsalm/Projects/Ivina/lib/Debug/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/Debug/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/Debug/gtest-object


PostBuild.gtest-object-manager.Debug:
PostBuild.gtest.Debug: /Users/rsalm/Projects/Ivina/bin/Debug/gtest-object-manager
PostBuild.object.Debug: /Users/rsalm/Projects/Ivina/bin/Debug/gtest-object-manager
/Users/rsalm/Projects/Ivina/bin/Debug/gtest-object-manager:\
	/Users/rsalm/Projects/Ivina/lib/Debug/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/Debug/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/Debug/gtest-object-manager


PostBuild.counters.Debug:
PostBuild.decrementor.Debug: /Users/rsalm/Projects/Ivina/lib/Debug/libcounters.a
PostBuild.incrementor.Debug: /Users/rsalm/Projects/Ivina/lib/Debug/libcounters.a
/Users/rsalm/Projects/Ivina/lib/Debug/libcounters.a:\
	/Users/rsalm/Projects/Ivina/build/src/counters/Decrementor/Application.build/Debug/decrementor.build/Objects-normal/libdecrementor.a\
	/Users/rsalm/Projects/Ivina/build/src/counters/Incrementor/Application.build/Debug/incrementor.build/Objects-normal/libincrementor.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/Debug/libcounters.a


PostBuild.incrementor.Debug:
PostBuild.gtest-incrementor.Debug:
PostBuild.gtest.Debug: /Users/rsalm/Projects/Ivina/bin/Debug/gtest-incrementor
PostBuild.counters.Debug: /Users/rsalm/Projects/Ivina/bin/Debug/gtest-incrementor
PostBuild.object.Debug: /Users/rsalm/Projects/Ivina/bin/Debug/gtest-incrementor
/Users/rsalm/Projects/Ivina/bin/Debug/gtest-incrementor:\
	/Users/rsalm/Projects/Ivina/lib/Debug/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/Debug/libcounters.a\
	/Users/rsalm/Projects/Ivina/lib/Debug/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/Debug/gtest-incrementor


PostBuild.decrementor.Debug:
PostBuild.gtest-decrementor.Debug:
PostBuild.gtest.Debug: /Users/rsalm/Projects/Ivina/bin/Debug/gtest-decrementor
PostBuild.counters.Debug: /Users/rsalm/Projects/Ivina/bin/Debug/gtest-decrementor
PostBuild.object.Debug: /Users/rsalm/Projects/Ivina/bin/Debug/gtest-decrementor
/Users/rsalm/Projects/Ivina/bin/Debug/gtest-decrementor:\
	/Users/rsalm/Projects/Ivina/lib/Debug/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/Debug/libcounters.a\
	/Users/rsalm/Projects/Ivina/lib/Debug/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/Debug/gtest-decrementor


PostBuild.gtest-counter.Debug:
PostBuild.gtest.Debug: /Users/rsalm/Projects/Ivina/bin/Debug/gtest-counter
PostBuild.counters.Debug: /Users/rsalm/Projects/Ivina/bin/Debug/gtest-counter
PostBuild.object.Debug: /Users/rsalm/Projects/Ivina/bin/Debug/gtest-counter
/Users/rsalm/Projects/Ivina/bin/Debug/gtest-counter:\
	/Users/rsalm/Projects/Ivina/lib/Debug/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/Debug/libcounters.a\
	/Users/rsalm/Projects/Ivina/lib/Debug/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/Debug/gtest-counter


PostBuild.gtest-counter-factory.Debug:
PostBuild.gtest.Debug: /Users/rsalm/Projects/Ivina/bin/Debug/gtest-counter-factory
PostBuild.counters.Debug: /Users/rsalm/Projects/Ivina/bin/Debug/gtest-counter-factory
PostBuild.object.Debug: /Users/rsalm/Projects/Ivina/bin/Debug/gtest-counter-factory
/Users/rsalm/Projects/Ivina/bin/Debug/gtest-counter-factory:\
	/Users/rsalm/Projects/Ivina/lib/Debug/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/Debug/libcounters.a\
	/Users/rsalm/Projects/Ivina/lib/Debug/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/Debug/gtest-counter-factory


PostBuild.gtest.Debug:
/Users/rsalm/Projects/Ivina/lib/Debug/libgtest.a:
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/Debug/libgtest.a


PostBuild.gmock.Debug:
/Users/rsalm/Projects/Ivina/lib/Debug/libgmock.a:
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/Debug/libgmock.a


PostBuild.application.Release:
PostBuild.counters.Release: /Users/rsalm/Projects/Ivina/bin/Release/application
PostBuild.object.Release: /Users/rsalm/Projects/Ivina/bin/Release/application
/Users/rsalm/Projects/Ivina/bin/Release/application:\
	/Users/rsalm/Projects/Ivina/lib/Release/libcounters.a\
	/Users/rsalm/Projects/Ivina/lib/Release/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/Release/application


PostBuild.object.Release:
/Users/rsalm/Projects/Ivina/lib/Release/libobject.a:
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/Release/libobject.a


PostBuild.gtest-object.Release:
PostBuild.gtest.Release: /Users/rsalm/Projects/Ivina/bin/Release/gtest-object
PostBuild.object.Release: /Users/rsalm/Projects/Ivina/bin/Release/gtest-object
/Users/rsalm/Projects/Ivina/bin/Release/gtest-object:\
	/Users/rsalm/Projects/Ivina/lib/Release/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/Release/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/Release/gtest-object


PostBuild.gtest-object-manager.Release:
PostBuild.gtest.Release: /Users/rsalm/Projects/Ivina/bin/Release/gtest-object-manager
PostBuild.object.Release: /Users/rsalm/Projects/Ivina/bin/Release/gtest-object-manager
/Users/rsalm/Projects/Ivina/bin/Release/gtest-object-manager:\
	/Users/rsalm/Projects/Ivina/lib/Release/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/Release/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/Release/gtest-object-manager


PostBuild.counters.Release:
PostBuild.decrementor.Release: /Users/rsalm/Projects/Ivina/lib/Release/libcounters.a
PostBuild.incrementor.Release: /Users/rsalm/Projects/Ivina/lib/Release/libcounters.a
/Users/rsalm/Projects/Ivina/lib/Release/libcounters.a:\
	/Users/rsalm/Projects/Ivina/build/src/counters/Decrementor/Application.build/Release/decrementor.build/Objects-normal/libdecrementor.a\
	/Users/rsalm/Projects/Ivina/build/src/counters/Incrementor/Application.build/Release/incrementor.build/Objects-normal/libincrementor.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/Release/libcounters.a


PostBuild.incrementor.Release:
PostBuild.gtest-incrementor.Release:
PostBuild.gtest.Release: /Users/rsalm/Projects/Ivina/bin/Release/gtest-incrementor
PostBuild.counters.Release: /Users/rsalm/Projects/Ivina/bin/Release/gtest-incrementor
PostBuild.object.Release: /Users/rsalm/Projects/Ivina/bin/Release/gtest-incrementor
/Users/rsalm/Projects/Ivina/bin/Release/gtest-incrementor:\
	/Users/rsalm/Projects/Ivina/lib/Release/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/Release/libcounters.a\
	/Users/rsalm/Projects/Ivina/lib/Release/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/Release/gtest-incrementor


PostBuild.decrementor.Release:
PostBuild.gtest-decrementor.Release:
PostBuild.gtest.Release: /Users/rsalm/Projects/Ivina/bin/Release/gtest-decrementor
PostBuild.counters.Release: /Users/rsalm/Projects/Ivina/bin/Release/gtest-decrementor
PostBuild.object.Release: /Users/rsalm/Projects/Ivina/bin/Release/gtest-decrementor
/Users/rsalm/Projects/Ivina/bin/Release/gtest-decrementor:\
	/Users/rsalm/Projects/Ivina/lib/Release/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/Release/libcounters.a\
	/Users/rsalm/Projects/Ivina/lib/Release/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/Release/gtest-decrementor


PostBuild.gtest-counter.Release:
PostBuild.gtest.Release: /Users/rsalm/Projects/Ivina/bin/Release/gtest-counter
PostBuild.counters.Release: /Users/rsalm/Projects/Ivina/bin/Release/gtest-counter
PostBuild.object.Release: /Users/rsalm/Projects/Ivina/bin/Release/gtest-counter
/Users/rsalm/Projects/Ivina/bin/Release/gtest-counter:\
	/Users/rsalm/Projects/Ivina/lib/Release/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/Release/libcounters.a\
	/Users/rsalm/Projects/Ivina/lib/Release/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/Release/gtest-counter


PostBuild.gtest-counter-factory.Release:
PostBuild.gtest.Release: /Users/rsalm/Projects/Ivina/bin/Release/gtest-counter-factory
PostBuild.counters.Release: /Users/rsalm/Projects/Ivina/bin/Release/gtest-counter-factory
PostBuild.object.Release: /Users/rsalm/Projects/Ivina/bin/Release/gtest-counter-factory
/Users/rsalm/Projects/Ivina/bin/Release/gtest-counter-factory:\
	/Users/rsalm/Projects/Ivina/lib/Release/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/Release/libcounters.a\
	/Users/rsalm/Projects/Ivina/lib/Release/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/Release/gtest-counter-factory


PostBuild.gtest.Release:
/Users/rsalm/Projects/Ivina/lib/Release/libgtest.a:
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/Release/libgtest.a


PostBuild.gmock.Release:
/Users/rsalm/Projects/Ivina/lib/Release/libgmock.a:
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/Release/libgmock.a


PostBuild.application.MinSizeRel:
PostBuild.counters.MinSizeRel: /Users/rsalm/Projects/Ivina/bin/MinSizeRel/application
PostBuild.object.MinSizeRel: /Users/rsalm/Projects/Ivina/bin/MinSizeRel/application
/Users/rsalm/Projects/Ivina/bin/MinSizeRel/application:\
	/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libcounters.a\
	/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/MinSizeRel/application


PostBuild.object.MinSizeRel:
/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libobject.a:
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/MinSizeRel/libobject.a


PostBuild.gtest-object.MinSizeRel:
PostBuild.gtest.MinSizeRel: /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-object
PostBuild.object.MinSizeRel: /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-object
/Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-object:\
	/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-object


PostBuild.gtest-object-manager.MinSizeRel:
PostBuild.gtest.MinSizeRel: /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-object-manager
PostBuild.object.MinSizeRel: /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-object-manager
/Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-object-manager:\
	/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-object-manager


PostBuild.counters.MinSizeRel:
PostBuild.decrementor.MinSizeRel: /Users/rsalm/Projects/Ivina/lib/MinSizeRel/libcounters.a
PostBuild.incrementor.MinSizeRel: /Users/rsalm/Projects/Ivina/lib/MinSizeRel/libcounters.a
/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libcounters.a:\
	/Users/rsalm/Projects/Ivina/build/src/counters/Decrementor/Application.build/MinSizeRel/decrementor.build/Objects-normal/libdecrementor.a\
	/Users/rsalm/Projects/Ivina/build/src/counters/Incrementor/Application.build/MinSizeRel/incrementor.build/Objects-normal/libincrementor.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/MinSizeRel/libcounters.a


PostBuild.incrementor.MinSizeRel:
PostBuild.gtest-incrementor.MinSizeRel:
PostBuild.gtest.MinSizeRel: /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-incrementor
PostBuild.counters.MinSizeRel: /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-incrementor
PostBuild.object.MinSizeRel: /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-incrementor
/Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-incrementor:\
	/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libcounters.a\
	/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-incrementor


PostBuild.decrementor.MinSizeRel:
PostBuild.gtest-decrementor.MinSizeRel:
PostBuild.gtest.MinSizeRel: /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-decrementor
PostBuild.counters.MinSizeRel: /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-decrementor
PostBuild.object.MinSizeRel: /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-decrementor
/Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-decrementor:\
	/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libcounters.a\
	/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-decrementor


PostBuild.gtest-counter.MinSizeRel:
PostBuild.gtest.MinSizeRel: /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-counter
PostBuild.counters.MinSizeRel: /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-counter
PostBuild.object.MinSizeRel: /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-counter
/Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-counter:\
	/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libcounters.a\
	/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-counter


PostBuild.gtest-counter-factory.MinSizeRel:
PostBuild.gtest.MinSizeRel: /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-counter-factory
PostBuild.counters.MinSizeRel: /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-counter-factory
PostBuild.object.MinSizeRel: /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-counter-factory
/Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-counter-factory:\
	/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libcounters.a\
	/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/MinSizeRel/gtest-counter-factory


PostBuild.gtest.MinSizeRel:
/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libgtest.a:
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/MinSizeRel/libgtest.a


PostBuild.gmock.MinSizeRel:
/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libgmock.a:
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/MinSizeRel/libgmock.a


PostBuild.application.RelWithDebInfo:
PostBuild.counters.RelWithDebInfo: /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/application
PostBuild.object.RelWithDebInfo: /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/application
/Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/application:\
	/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libcounters.a\
	/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/application


PostBuild.object.RelWithDebInfo:
/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libobject.a:
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libobject.a


PostBuild.gtest-object.RelWithDebInfo:
PostBuild.gtest.RelWithDebInfo: /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-object
PostBuild.object.RelWithDebInfo: /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-object
/Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-object:\
	/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-object


PostBuild.gtest-object-manager.RelWithDebInfo:
PostBuild.gtest.RelWithDebInfo: /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-object-manager
PostBuild.object.RelWithDebInfo: /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-object-manager
/Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-object-manager:\
	/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-object-manager


PostBuild.counters.RelWithDebInfo:
PostBuild.decrementor.RelWithDebInfo: /Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libcounters.a
PostBuild.incrementor.RelWithDebInfo: /Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libcounters.a
/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libcounters.a:\
	/Users/rsalm/Projects/Ivina/build/src/counters/Decrementor/Application.build/RelWithDebInfo/decrementor.build/Objects-normal/libdecrementor.a\
	/Users/rsalm/Projects/Ivina/build/src/counters/Incrementor/Application.build/RelWithDebInfo/incrementor.build/Objects-normal/libincrementor.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libcounters.a


PostBuild.incrementor.RelWithDebInfo:
PostBuild.gtest-incrementor.RelWithDebInfo:
PostBuild.gtest.RelWithDebInfo: /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-incrementor
PostBuild.counters.RelWithDebInfo: /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-incrementor
PostBuild.object.RelWithDebInfo: /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-incrementor
/Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-incrementor:\
	/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libcounters.a\
	/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-incrementor


PostBuild.decrementor.RelWithDebInfo:
PostBuild.gtest-decrementor.RelWithDebInfo:
PostBuild.gtest.RelWithDebInfo: /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-decrementor
PostBuild.counters.RelWithDebInfo: /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-decrementor
PostBuild.object.RelWithDebInfo: /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-decrementor
/Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-decrementor:\
	/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libcounters.a\
	/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-decrementor


PostBuild.gtest-counter.RelWithDebInfo:
PostBuild.gtest.RelWithDebInfo: /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-counter
PostBuild.counters.RelWithDebInfo: /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-counter
PostBuild.object.RelWithDebInfo: /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-counter
/Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-counter:\
	/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libcounters.a\
	/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-counter


PostBuild.gtest-counter-factory.RelWithDebInfo:
PostBuild.gtest.RelWithDebInfo: /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-counter-factory
PostBuild.counters.RelWithDebInfo: /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-counter-factory
PostBuild.object.RelWithDebInfo: /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-counter-factory
/Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-counter-factory:\
	/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libgtest.a\
	/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libcounters.a\
	/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libobject.a
	/bin/rm -f /Users/rsalm/Projects/Ivina/bin/RelWithDebInfo/gtest-counter-factory


PostBuild.gtest.RelWithDebInfo:
/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libgtest.a:
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libgtest.a


PostBuild.gmock.RelWithDebInfo:
/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libgmock.a:
	/bin/rm -f /Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libgmock.a




# For each target create a dummy ruleso the target does not have to exist
/Users/rsalm/Projects/Ivina/build/src/counters/Decrementor/Application.build/Debug/decrementor.build/Objects-normal/libdecrementor.a:
/Users/rsalm/Projects/Ivina/build/src/counters/Decrementor/Application.build/MinSizeRel/decrementor.build/Objects-normal/libdecrementor.a:
/Users/rsalm/Projects/Ivina/build/src/counters/Decrementor/Application.build/RelWithDebInfo/decrementor.build/Objects-normal/libdecrementor.a:
/Users/rsalm/Projects/Ivina/build/src/counters/Decrementor/Application.build/Release/decrementor.build/Objects-normal/libdecrementor.a:
/Users/rsalm/Projects/Ivina/build/src/counters/Incrementor/Application.build/Debug/incrementor.build/Objects-normal/libincrementor.a:
/Users/rsalm/Projects/Ivina/build/src/counters/Incrementor/Application.build/MinSizeRel/incrementor.build/Objects-normal/libincrementor.a:
/Users/rsalm/Projects/Ivina/build/src/counters/Incrementor/Application.build/RelWithDebInfo/incrementor.build/Objects-normal/libincrementor.a:
/Users/rsalm/Projects/Ivina/build/src/counters/Incrementor/Application.build/Release/incrementor.build/Objects-normal/libincrementor.a:
/Users/rsalm/Projects/Ivina/lib/Debug/libcounters.a:
/Users/rsalm/Projects/Ivina/lib/Debug/libgtest.a:
/Users/rsalm/Projects/Ivina/lib/Debug/libobject.a:
/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libcounters.a:
/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libgtest.a:
/Users/rsalm/Projects/Ivina/lib/MinSizeRel/libobject.a:
/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libcounters.a:
/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libgtest.a:
/Users/rsalm/Projects/Ivina/lib/RelWithDebInfo/libobject.a:
/Users/rsalm/Projects/Ivina/lib/Release/libcounters.a:
/Users/rsalm/Projects/Ivina/lib/Release/libgtest.a:
/Users/rsalm/Projects/Ivina/lib/Release/libobject.a:
