# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := js2c
### Rules for action "js2c":
quiet_cmd_js2c_js2c = ACTION js2c_js2c $@
cmd_js2c_js2c = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd $(srcdir)/tools/gyp; mkdir -p $(obj)/gen; python ../../tools/js2c.py "$(obj)/gen/libraries.cc" CORE off ../../src/runtime.js ../../src/v8natives.js ../../src/array.js ../../src/string.js ../../src/uri.js ../../src/math.js ../../src/messages.js ../../src/apinatives.js ../../src/debug-debugger.js ../../src/mirror-debugger.js ../../src/liveedit-debugger.js ../../src/date.js ../../src/json.js ../../src/regexp.js ../../src/arraybuffer.js ../../src/typedarray.js ../../src/weak_collection.js ../../src/promise.js ../../src/object-observe.js ../../src/macros.py ../../src/i18n.js

$(obj)/gen/libraries.cc: obj := $(abs_obj)
$(obj)/gen/libraries.cc: builddir := $(abs_builddir)
$(obj)/gen/libraries.cc: TOOLSET := $(TOOLSET)
$(obj)/gen/libraries.cc: $(srcdir)/tools/js2c.py $(srcdir)/src/runtime.js $(srcdir)/src/v8natives.js $(srcdir)/src/array.js $(srcdir)/src/string.js $(srcdir)/src/uri.js $(srcdir)/src/math.js $(srcdir)/src/messages.js $(srcdir)/src/apinatives.js $(srcdir)/src/debug-debugger.js $(srcdir)/src/mirror-debugger.js $(srcdir)/src/liveedit-debugger.js $(srcdir)/src/date.js $(srcdir)/src/json.js $(srcdir)/src/regexp.js $(srcdir)/src/arraybuffer.js $(srcdir)/src/typedarray.js $(srcdir)/src/weak_collection.js $(srcdir)/src/promise.js $(srcdir)/src/object-observe.js $(srcdir)/src/macros.py $(srcdir)/src/i18n.js FORCE_DO_CMD
	$(call do_cmd,js2c_js2c)

all_deps += $(obj)/gen/libraries.cc
action_js2c_js2c_outputs := $(obj)/gen/libraries.cc

### Rules for action "js2c_experimental":
quiet_cmd_js2c_js2c_experimental = ACTION js2c_js2c_experimental $@
cmd_js2c_js2c_experimental = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd $(srcdir)/tools/gyp; mkdir -p $(obj)/gen; python ../../tools/js2c.py "$(obj)/gen/experimental-libraries.cc" EXPERIMENTAL off ../../src/macros.py ../../src/symbol.js ../../src/proxy.js ../../src/collection.js ../../src/collection-iterator.js ../../src/generator.js ../../src/array-iterator.js ../../src/string-iterator.js ../../src/harmony-string.js ../../src/harmony-array.js ../../src/harmony-math.js

$(obj)/gen/experimental-libraries.cc: obj := $(abs_obj)
$(obj)/gen/experimental-libraries.cc: builddir := $(abs_builddir)
$(obj)/gen/experimental-libraries.cc: TOOLSET := $(TOOLSET)
$(obj)/gen/experimental-libraries.cc: $(srcdir)/tools/js2c.py $(srcdir)/src/macros.py $(srcdir)/src/symbol.js $(srcdir)/src/proxy.js $(srcdir)/src/collection.js $(srcdir)/src/collection-iterator.js $(srcdir)/src/generator.js $(srcdir)/src/array-iterator.js $(srcdir)/src/string-iterator.js $(srcdir)/src/harmony-string.js $(srcdir)/src/harmony-array.js $(srcdir)/src/harmony-math.js FORCE_DO_CMD
	$(call do_cmd,js2c_js2c_experimental)

all_deps += $(obj)/gen/experimental-libraries.cc
action_js2c_js2c_experimental_outputs := $(obj)/gen/experimental-libraries.cc


### Rules for final target.
# Build our special outputs first.
$(obj).target/tools/gyp/js2c.stamp: | $(action_js2c_js2c_outputs) $(action_js2c_js2c_experimental_outputs)

# Preserve order dependency of special output on deps.
$(action_js2c_js2c_outputs): | 

$(obj).target/tools/gyp/js2c.stamp: TOOLSET := $(TOOLSET)
$(obj).target/tools/gyp/js2c.stamp:  FORCE_DO_CMD
	$(call do_cmd,touch)

all_deps += $(obj).target/tools/gyp/js2c.stamp
# Add target alias
.PHONY: js2c
js2c: $(obj).target/tools/gyp/js2c.stamp

# Add target alias to "all" target.
.PHONY: all
all: js2c

