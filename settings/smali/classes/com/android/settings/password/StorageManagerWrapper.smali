.class public Lcom/android/settings/password/StorageManagerWrapper;
.super Ljava/lang/Object;
.source "StorageManagerWrapper.java"


# direct methods
.method public static isFileEncryptedNativeOrEmulated()Z
    .locals 1

    .line 27
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    return v0
.end method
