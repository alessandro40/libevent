####################################
# Build libevent as separate library

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE:= libevent2
LOCAL_MODULE_TAGS:= optional

LOCAL_SRC_FILES := \
    $(LOCAL_PATH)/buffer.c \
    $(LOCAL_PATH)/bufferevent.c \
    $(LOCAL_PATH)/bufferevent_filter.c \
    $(LOCAL_PATH)/bufferevent_pair.c \
    $(LOCAL_PATH)/bufferevent_ratelim.c \
    $(LOCAL_PATH)/bufferevent_sock.c \
    $(LOCAL_PATH)/epoll.c \
    $(LOCAL_PATH)/epoll_sub.c \
    $(LOCAL_PATH)/evdns.c \
    $(LOCAL_PATH)/event.c \
    $(LOCAL_PATH)/event_tagging.c \
    $(LOCAL_PATH)/evmap.c \
    $(LOCAL_PATH)/evrpc.c \
    $(LOCAL_PATH)/evthread.c \
    $(LOCAL_PATH)/evthread_pthread.c \
    $(LOCAL_PATH)/evutil.c \
    $(LOCAL_PATH)/evutil_rand.c \
    $(LOCAL_PATH)/http.c \
    $(LOCAL_PATH)/listener.c \
    $(LOCAL_PATH)/log.c \
    $(LOCAL_PATH)/poll.c \
    $(LOCAL_PATH)/select.c \
    $(LOCAL_PATH)/signal.c \
    $(LOCAL_PATH)/strlcpy.c

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH) \
    $(LOCAL_PATH)/android \
    $(LOCAL_PATH)/include

LOCAL_CFLAGS := -DHAVE_CONFIG_H -DANDROID -fvisibility=hidden

include $(BUILD_STATIC_LIBRARY)
