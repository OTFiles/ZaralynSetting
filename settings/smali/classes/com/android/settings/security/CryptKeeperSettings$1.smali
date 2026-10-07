.class Lcom/android/settings/security/CryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/security/CryptKeeperSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/security/CryptKeeperSettings;

    .line 63
    iput-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings$1;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    const-string v1, "level"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 69
    .local v1, "level":I
    const-string v3, "plugged"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 70
    .local v3, "plugged":I
    const-string v4, "invalid_charger"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 73
    .local v4, "invalidCharger":I
    const/16 v5, 0x50

    const/4 v6, 0x1

    if-lt v1, v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v2

    .line 74
    .local v5, "levelOk":Z
    :goto_0
    and-int/lit8 v7, v3, 0x7

    if-eqz v7, :cond_1

    if-nez v4, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v2

    .line 79
    .local v7, "pluggedOk":Z
    :goto_1
    iget-object v8, p0, Lcom/android/settings/security/CryptKeeperSettings$1;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-static {v8}, Lcom/android/settings/security/CryptKeeperSettings;->access$000(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v8

    if-eqz v5, :cond_2

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    invoke-virtual {v8, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 80
    iget-object v6, p0, Lcom/android/settings/security/CryptKeeperSettings$1;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-static {v6}, Lcom/android/settings/security/CryptKeeperSettings;->access$100(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v6

    const/16 v8, 0x8

    if-eqz v7, :cond_3

    move v9, v8

    goto :goto_3

    :cond_3
    move v9, v2

    :goto_3
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v6, p0, Lcom/android/settings/security/CryptKeeperSettings$1;->this$0:Lcom/android/settings/security/CryptKeeperSettings;

    invoke-static {v6}, Lcom/android/settings/security/CryptKeeperSettings;->access$200(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v6

    if-eqz v5, :cond_4

    move v2, v8

    nop

    :cond_4
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .end local v1
    .end local v3
    .end local v4
    .end local v5
    .end local v7
    :cond_5
    return-void
.end method
