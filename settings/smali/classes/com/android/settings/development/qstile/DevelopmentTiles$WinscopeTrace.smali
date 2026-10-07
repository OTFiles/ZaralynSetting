.class public Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;
.super Lcom/android/settings/development/qstile/DevelopmentTiles;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/qstile/DevelopmentTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WinscopeTrace"
.end annotation


# static fields
.field static final SURFACE_FLINGER_LAYER_TRACE_CONTROL_CODE:I = 0x401

.field static final SURFACE_FLINGER_LAYER_TRACE_STATUS_CODE:I = 0x402


# instance fields
.field private mSurfaceFlinger:Landroid/os/IBinder;

.field private mToast:Landroid/widget/Toast;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;-><init>()V

    return-void
.end method

.method private isLayerTraceEnabled()Z
    .locals 7

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "layerTraceEnabled":Z
    const/4 v1, 0x0

    .line 209
    .local v1, "reply":Landroid/os/Parcel;
    const/4 v2, 0x0

    .line 211
    .local v2, "data":Landroid/os/Parcel;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mSurfaceFlinger:Landroid/os/IBinder;

    if-eqz v3, :cond_0

    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    move-object v1, v3

    .line 213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    move-object v2, v3

    .line 214
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 v4, 0x402

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 217
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    .line 222
    :cond_0
    if-eqz v2, :cond_1

    .line 223
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 222
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 219
    :catch_0
    move-exception v3

    .line 220
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "DevelopmentTiles"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not get layer trace status, defaulting to false."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_0

    .line 227
    :cond_1
    :goto_1
    return v0

    .line 222
    :goto_2
    if-eqz v2, :cond_2

    .line 223
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_2
    throw v3
.end method

.method private isWindowTraceEnabled()Z
    .locals 4

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->isWindowTraceEnabled()Z

    move-result v0

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DevelopmentTiles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get window trace status, defaulting to false."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v0
    const/4 v0, 0x0

    return v0
.end method

.method private setLayerTraceEnabled(Z)V
    .locals 5
    .param p1, "isEnabled"    # Z

    .line 248
    const/4 v0, 0x0

    move-object v1, v0

    .line 250
    .local v1, "data":Landroid/os/Parcel;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mSurfaceFlinger:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    move-object v1, v2

    .line 252
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget-object v2, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 v3, 0x401

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 260
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    .line 261
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 260
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "DevelopmentTiles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not set layer tracing."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 264
    :cond_1
    :goto_1
    return-void

    .line 260
    :goto_2
    if-eqz v1, :cond_2

    .line 261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_2
    throw v0
.end method

.method private setWindowTraceEnabled(Z)V
    .locals 4
    .param p1, "isEnabled"    # Z

    .line 237
    if-eqz p1, :cond_0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->startWindowTrace()V

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    goto :goto_1

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->stopWindowTrace()V

    .line 244
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_2

    .line 242
    :goto_1
    nop

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DevelopmentTiles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set window trace status."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v0
    :goto_2
    return-void
.end method


# virtual methods
.method protected isEnabled()Z
    .locals 1

    .line 232
    invoke-direct {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->isWindowTraceEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->isLayerTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onCreate()V
    .locals 3

    .line 188
    invoke-super {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->onCreate()V

    .line 189
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mWindowManager:Landroid/view/IWindowManager;

    .line 190
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mSurfaceFlinger:Landroid/os/IBinder;

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 192
    .local v0, "context":Landroid/content/Context;
    const-string v1, "Trace files written to /data/misc/wmtrace"

    .line 193
    .local v1, "text":Ljava/lang/CharSequence;
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mToast:Landroid/widget/Toast;

    .line 194
    return-void
.end method

.method protected setIsEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .line 268
    invoke-direct {p0, p1}, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->setWindowTraceEnabled(Z)V

    .line 269
    invoke-direct {p0, p1}, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->setLayerTraceEnabled(Z)V

    .line 270
    if-nez p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 273
    :cond_0
    return-void
.end method
