# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := v8
DEFS_Debug := '-DV8_TARGET_ARCH_X64' \
	'-DENABLE_GDB_JIT_INTERFACE' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_I18N_SUPPORT' \
	'-DV8_USE_DEFAULT_PLATFORM' \
	'-DV8_SHARED' \
	'-DBUILDING_V8_SHARED' \
	'-DUSING_V8_SHARED' \
	'-DENABLE_DISASSEMBLER' \
	'-DV8_ENABLE_CHECKS' \
	'-DOBJECT_PRINT' \
	'-DVERIFY_HEAP' \
	'-DDEBUG' \
	'-DENABLE_EXTRA_CHECKS' \
	'-DENABLE_HANDLE_ZAPPING'

# Flags passed to all source files.
CFLAGS_Debug := -Wall \
	-Werror \
	-W \
	-Wno-unused-parameter \
	-Wno-long-long \
	-pthread \
	-fno-exceptions \
	-pedantic \
	-ansi \
	-fPIC \
	-m64 \
	-m64 \
	-g \
	-Woverloaded-virtual \
	 \
	-Woverloaded-virtual \
	-fdata-sections \
	-ffunction-sections \
	-fdata-sections \
	-ffunction-sections

# Flags passed to only C files.
CFLAGS_C_Debug := 

# Flags passed to only C++ files.
CFLAGS_CC_Debug := -Wnon-virtual-dtor \
	-fno-rtti

INCS_Debug := -I$(srcdir)/.

DEFS_Optdebug := '-DV8_TARGET_ARCH_X64' \
	'-DENABLE_GDB_JIT_INTERFACE' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_I18N_SUPPORT' \
	'-DV8_USE_DEFAULT_PLATFORM' \
	'-DV8_SHARED' \
	'-DBUILDING_V8_SHARED' \
	'-DUSING_V8_SHARED' \
	'-DENABLE_DISASSEMBLER' \
	'-DV8_ENABLE_CHECKS' \
	'-DOBJECT_PRINT' \
	'-DVERIFY_HEAP' \
	'-DDEBUG' \
	'-DENABLE_EXTRA_CHECKS' \
	'-DENABLE_HANDLE_ZAPPING' \
	'-DOPTIMIZED_DEBUG'

# Flags passed to all source files.
CFLAGS_Optdebug := -Wall \
	-Werror \
	-W \
	-Wno-unused-parameter \
	-Wno-long-long \
	-pthread \
	-fno-exceptions \
	-pedantic \
	-ansi \
	-fPIC \
	-m64 \
	-m64 \
	-g \
	-Woverloaded-virtual \
	 \
	-Woverloaded-virtual \
	-fdata-sections \
	-ffunction-sections \
	-O3 \
	-fdata-sections \
	-ffunction-sections \
	-O3

# Flags passed to only C files.
CFLAGS_C_Optdebug := 

# Flags passed to only C++ files.
CFLAGS_CC_Optdebug := -Wnon-virtual-dtor \
	-fno-rtti

INCS_Optdebug := -I$(srcdir)/.

DEFS_Release := '-DV8_TARGET_ARCH_X64' \
	'-DENABLE_GDB_JIT_INTERFACE' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_I18N_SUPPORT' \
	'-DV8_USE_DEFAULT_PLATFORM' \
	'-DV8_SHARED' \
	'-DBUILDING_V8_SHARED' \
	'-DUSING_V8_SHARED' \
	'-DENABLE_HANDLE_ZAPPING'

# Flags passed to all source files.
CFLAGS_Release := -Wall \
	-Werror \
	-W \
	-Wno-unused-parameter \
	-Wno-long-long \
	-pthread \
	-fno-exceptions \
	-pedantic \
	-ansi \
	-fPIC \
	-m64 \
	-m64 \
	-fdata-sections \
	-ffunction-sections \
	 \
	-O3 \
	-fdata-sections \
	-ffunction-sections \
	-O3

# Flags passed to only C files.
CFLAGS_C_Release := 

# Flags passed to only C++ files.
CFLAGS_CC_Release := -Wnon-virtual-dtor \
	-fno-rtti

INCS_Release := -I$(srcdir)/.

OBJS := $(obj).target/$(TARGET)/src/v8dll-main.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/tools/gyp/libv8_base.a $(obj).target/tools/gyp/libv8_snapshot.a $(obj).target/tools/gyp/libv8_libbase.a $(builddir)/lib.target/libicui18n.so $(builddir)/lib.target/libicuuc.so $(obj).target/tools/gyp/js2c.stamp $(obj).target/tools/gyp/generate_trig_table.stamp $(obj).target/third_party/icu/libicui18n.so $(obj).target/third_party/icu/libicuuc.so

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := -pthread \
	-m64 \
	-m64 \
	-rdynamic \
	-rdynamic \
	-Wl,-rpath=\$$ORIGIN/lib.target/ \
	-Wl,-rpath-link=\$(builddir)/lib.target/

LDFLAGS_Optdebug := -pthread \
	-m64 \
	-m64 \
	-rdynamic \
	-rdynamic \
	-Wl,-rpath=\$$ORIGIN/lib.target/ \
	-Wl,-rpath-link=\$(builddir)/lib.target/

LDFLAGS_Release := -pthread \
	-m64 \
	-m64 \
	-Wl,-rpath=\$$ORIGIN/lib.target/ \
	-Wl,-rpath-link=\$(builddir)/lib.target/

LIBS := -lrt

$(obj).target/tools/gyp/libv8.so: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/tools/gyp/libv8.so: LIBS := $(LIBS)
$(obj).target/tools/gyp/libv8.so: LD_INPUTS := $(OBJS) $(obj).target/tools/gyp/libv8_base.a $(obj).target/tools/gyp/libv8_snapshot.a $(obj).target/tools/gyp/libv8_libbase.a $(obj).target/third_party/icu/libicui18n.so $(obj).target/third_party/icu/libicuuc.so
$(obj).target/tools/gyp/libv8.so: TOOLSET := $(TOOLSET)
$(obj).target/tools/gyp/libv8.so: $(OBJS) $(obj).target/tools/gyp/libv8_base.a $(obj).target/tools/gyp/libv8_snapshot.a $(obj).target/tools/gyp/libv8_libbase.a $(obj).target/third_party/icu/libicui18n.so $(obj).target/third_party/icu/libicuuc.so FORCE_DO_CMD
	$(call do_cmd,solink)

all_deps += $(obj).target/tools/gyp/libv8.so
# Add target alias
.PHONY: v8
v8: $(builddir)/lib.target/libv8.so

# Copy this to the shared library output path.
$(builddir)/lib.target/libv8.so: TOOLSET := $(TOOLSET)
$(builddir)/lib.target/libv8.so: $(obj).target/tools/gyp/libv8.so FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/lib.target/libv8.so
# Short alias for building this shared library.
.PHONY: libv8.so
libv8.so: $(obj).target/tools/gyp/libv8.so $(builddir)/lib.target/libv8.so

# Add shared library to "all" target.
.PHONY: all
all: $(builddir)/lib.target/libv8.so

