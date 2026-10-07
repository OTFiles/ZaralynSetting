.class Lcom/android/settings/bluetooth/OthersConnectionSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "OthersConnectionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/OthersConnectionSettings;
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

    .line 148
    iput-object p1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings$1;->this$0:Lcom/android/settings/bluetooth/OthersConnectionSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 151
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    .line 153
    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 159
    .local v1, "state":I
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings$1;->this$0:Lcom/android/settings/bluetooth/OthersConnectionSettings;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->access$002(Lcom/android/settings/bluetooth/OthersConnectionSettings;Z)Z

    .line 162
    :cond_0
    return-void
.end method
