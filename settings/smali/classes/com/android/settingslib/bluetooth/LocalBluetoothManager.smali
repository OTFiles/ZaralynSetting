.class public Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
.super Ljava/lang/Object;
.source "LocalBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# instance fields
.field private final mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private final mContext:Landroid/content/Context;

.field private final mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

.field private mForegroundActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V
    .locals 4
    .param p1, "adapter"    # Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    .line 71
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 73
    new-instance v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, p2, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 74
    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 76
    new-instance v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 78
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    .line 79
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onInitCallback"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    const-class v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_1

    .line 54
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    .line 55
    .local v1, "adapter":Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 56
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 59
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 60
    .local v2, "appContext":Landroid/content/Context;
    new-instance v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-direct {v3, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V

    sput-object v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 61
    if-eqz p1, :cond_1

    .line 62
    sget-object v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-interface {p1, v2, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;->onBluetoothManagerInitialized(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 66
    .end local v1
    .end local v2
    :cond_1
    sget-object v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 52
    .end local p0
    .end local p1
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method public getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method public getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    return-object v0
.end method

.method public getForegroundActivity()Landroid/content/Context;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 90
    :goto_0
    return-object v0
.end method

.method public getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method public isForegroundActivity()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized setForegroundActivity(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 100
    if-eqz p1, :cond_0

    .line 101
    :try_start_0
    const-string v0, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to non-null context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 99
    .end local p1
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 104
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 105
    const-string v0, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    .line 109
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 99
    .end local p1
    :goto_1
    monitor-exit p0

    .end local p0
    throw p1
.end method
