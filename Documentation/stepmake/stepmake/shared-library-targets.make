include $(depth)/config$(if $(conf),-$(conf),).make
include $(configure-srcdir)/./stepmake/stepmake/shared-library-targets.make
