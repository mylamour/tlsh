# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := tlsh
DEFS_Debug := \
	'-DHAVE_CONFIG_H' \
	'-DHAVE_SYS_TYPES_H' \
	'-DHAVE_FCNTL_H' \
	'-DHAVE_UNISTD_H' \
	'-DHAVE_DIRENT_H' \
	'-DTIME_WITH_SYS_TIME' \
	'-DHAVE_SYS_PARAM_H' \
	'-DHAVE_SYS_IOCTL_H' \
	'-DHAVE_SYS_MOUNT_H' \
	'-DBUCKETS_256' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-Wall \
	-pthread \
	-g \
	-O0 \
	-fwrapv

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti

INCS_Debug := \
	-I../src \
	-I../src/include

DEFS_Release := \
	'-DHAVE_CONFIG_H' \
	'-DHAVE_SYS_TYPES_H' \
	'-DHAVE_FCNTL_H' \
	'-DHAVE_UNISTD_H' \
	'-DHAVE_DIRENT_H' \
	'-DTIME_WITH_SYS_TIME' \
	'-DHAVE_SYS_PARAM_H' \
	'-DHAVE_SYS_IOCTL_H' \
	'-DHAVE_SYS_MOUNT_H' \
	'-DBUCKETS_256' \
	'-DNDEBUG'

# Flags passed to all source files.
CFLAGS_Release := \
	-Wall \
	-pthread \
	-O3 \
	-fstrict-aliasing \
	-fomit-frame-pointer \
	-fdata-sections \
	-ffunction-sections

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti

INCS_Release := \
	-I../src \
	-I../src/include

OBJS := \
	$(obj).target/$(TARGET)/../src/tlsh.o \
	$(obj).target/$(TARGET)/../src/tlsh_impl.o \
	$(obj).target/$(TARGET)/../src/tlsh_util.o \
	$(obj).target/$(TARGET)/../test/tlsh_unittest.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-static \
	-pthread

LDFLAGS_Release := \
	-static \
	-pthread

LIBS :=

$(builddir)/tlsh: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/tlsh: LIBS := $(LIBS)
$(builddir)/tlsh: LD_INPUTS := $(OBJS)
$(builddir)/tlsh: TOOLSET := $(TOOLSET)
$(builddir)/tlsh: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/tlsh
# Add target alias
.PHONY: tlsh
tlsh: $(builddir)/tlsh

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/tlsh

