.class Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearCacheObserver"
.end annotation


# instance fields
.field private mRemaining:I

.field private final mTarget:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;I)V
    .locals 0
    .param p1, "target"    # Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
    .param p2, "remaining"    # I

    .line 910
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 911
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mTarget:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .line 912
    iput p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mRemaining:I

    .line 913
    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;)Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;

    .line 906
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mTarget:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    return-object v0
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .line 917
    monitor-enter p0

    .line 918
    :try_start_0
    iget v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mRemaining:I

    if-nez v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mTarget:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 926
    :cond_0
    monitor-exit p0

    .line 927
    return-void

    .line 926
    :catchall_0
    move-exception v0

    monitor-exit p0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
