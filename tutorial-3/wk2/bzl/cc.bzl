
""" A cc_binary wrapper """

_MIGRATION_TAG = "__CC_RULES_MIGRATION_DO_NOT_USE_WILL_BREAK__"

def _add_tags(attrs):
    if "tags" in attrs and attrs["tags"] != None:
        attrs["tags"] = attrs["tags"] + [_MIGRATION_TAG]
    else:
        attrs["tags"] = [_MIGRATION_TAG]
    return attrs


def cc_binary_custom(**attrs):
    """Bazel cc_binary rule.
    https://docs.bazel.build/versions/master/be/c-cpp.html#cc_binary
    Args:
      **attrs: Rule attributes
    """

    # buildifier: disable=native-cc
    native.cc_binary(**_add_tags(attrs))
