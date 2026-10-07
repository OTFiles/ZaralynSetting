.class Lcom/android/settings/display/ColorModePreferenceController$ConfigurationWrapper;
.super Ljava/lang/Object;
.source "ColorModePreferenceController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ColorModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigurationWrapper"
.end annotation


# instance fields
.field private final mSurfaceFlinger:Landroid/os/IBinder;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ColorModePreferenceController$ConfigurationWrapper;->mSurfaceFlinger:Landroid/os/IBinder;

    .line 78
    return-void
.end method


# virtual methods
.method isScreenWideColorGamut()Z
    .locals 6

    .line 81
    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceController$ConfigurationWrapper;->mSurfaceFlinger:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 83
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 84
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 86
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/display/ColorModePreferenceController$ConfigurationWrapper;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 v4, 0x400

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 88
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 92
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 93
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 88
    return v3

    .line 92
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 89
    :catch_0
    move-exception v3

    .line 90
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "ColorModePreference"

    const-string v5, "Failed to query wide color support"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 93
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 94
    goto :goto_1

    .line 92
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 93
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v1

    .line 96
    .end local v0
    .end local v2
    :cond_0
    :goto_1
    return v1
.end method
