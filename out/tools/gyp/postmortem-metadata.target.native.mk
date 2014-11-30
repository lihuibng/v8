# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := postmortem-metadata
### Rules for action "gen-postmortem-metadata":
quiet_cmd_postmortem-metadata_gen-postmortem-metadata = ACTION postmortem-metadata_gen-postmortem-metadata $@
cmd_postmortem-metadata_gen-postmortem-metadata = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd $(srcdir)/tools/gyp; mkdir -p $(obj)/gen; python ../../tools/gen-postmortem-metadata.py "$(obj)/gen/debug-support.cc" ../../src/objects.h ../../src/objects-inl.h

$(obj)/gen/debug-support.cc: obj := $(abs_obj)
$(obj)/gen/debug-support.cc: builddir := $(abs_builddir)
$(obj)/gen/debug-support.cc: TOOLSET := $(TOOLSET)
$(obj)/gen/debug-support.cc: $(srcdir)/tools/gen-postmortem-metadata.py $(srcdir)/src/objects.h $(srcdir)/src/objects-inl.h FORCE_DO_CMD
	$(call do_cmd,postmortem-metadata_gen-postmortem-metadata)

all_deps += $(obj)/gen/debug-support.cc
action_postmortem-metadata_gen-postmortem-metadata_outputs := $(obj)/gen/debug-support.cc


### Rules for final target.
# Build our special outputs first.
$(obj).target/tools/gyp/postmortem-metadata.stamp: | $(action_postmortem-metadata_gen-postmortem-metadata_outputs)

# Preserve order dependency of special output on deps.
$(action_postmortem-metadata_gen-postmortem-metadata_outputs): | 

$(obj).target/tools/gyp/postmortem-metadata.stamp: TOOLSET := $(TOOLSET)
$(obj).target/tools/gyp/postmortem-metadata.stamp:  FORCE_DO_CMD
	$(call do_cmd,touch)

all_deps += $(obj).target/tools/gyp/postmortem-metadata.stamp
# Add target alias
.PHONY: postmortem-metadata
postmortem-metadata: $(obj).target/tools/gyp/postmortem-metadata.stamp
