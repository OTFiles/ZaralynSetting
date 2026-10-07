.class Lcom/android/settings/bluetooth/BluetoothDetailsController$1;
.super Ljava/lang/Object;
.source "BluetoothDetailsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothDetailsController;->onDeviceAttributesChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDetailsController;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDetailsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/BluetoothDetailsController;

    .line 71
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDetailsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDetailsController;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDetailsController;->refresh()V

    .line 75
    return-void
.end method
