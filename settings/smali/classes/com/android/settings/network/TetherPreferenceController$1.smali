.class Lcom/android/settings/network/TetherPreferenceController$1;
.super Ljava/lang/Object;
.source "TetherPreferenceController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/TetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/TetherPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/TetherPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/network/TetherPreferenceController;

    .line 64
    iput-object p1, p0, Lcom/android/settings/network/TetherPreferenceController$1;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 66
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController$1;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/TetherPreferenceController;->access$000(Lcom/android/settings/network/TetherPreferenceController;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController$1;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/TetherPreferenceController;->updateSummary()V

    .line 68
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .param p1, "profile"    # I

    .line 71
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 72
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController$1;->this$0:Lcom/android/settings/network/TetherPreferenceController;

    invoke-static {v1}, Lcom/android/settings/network/TetherPreferenceController;->access$000(Lcom/android/settings/network/TetherPreferenceController;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfile;

    .line 73
    .local v1, "currentProfile":Landroid/bluetooth/BluetoothProfile;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 74
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 76
    :cond_0
    return-void
.end method
