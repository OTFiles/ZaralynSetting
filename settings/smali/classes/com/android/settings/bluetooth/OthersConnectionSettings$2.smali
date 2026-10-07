.class Lcom/android/settings/bluetooth/OthersConnectionSettings$2;
.super Ljava/lang/Object;
.source "OthersConnectionSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/OthersConnectionSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/OthersConnectionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/OthersConnectionSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/OthersConnectionSettings;

    .line 226
    iput-object p1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings$2;->this$0:Lcom/android/settings/bluetooth/OthersConnectionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 229
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings$2;->this$0:Lcom/android/settings/bluetooth/OthersConnectionSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/OthersConnectionSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings$2;->this$0:Lcom/android/settings/bluetooth/OthersConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->access$100(Lcom/android/settings/bluetooth/OthersConnectionSettings;)V

    .line 232
    :cond_0
    return-void
.end method
