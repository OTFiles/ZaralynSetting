.class Lcom/android/settings/network/ApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ApnSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/network/ApnSettings;

    .line 140
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 143
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    invoke-static {p2}, Lcom/android/settings/network/ApnSettings;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 146
    .local v0, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v1, Lcom/android/settings/network/ApnSettings$3;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .end local v0
    goto :goto_0

    .line 148
    .restart local v0
    :cond_0
    invoke-static {}, Lcom/android/settings/network/ApnSettings;->access$100()Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/network/ApnSettings;->access$200(Lcom/android/settings/network/ApnSettings;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    const/16 v2, 0x3e9

    invoke-static {v1, v2}, Lcom/android/settings/network/ApnSettings;->access$300(Lcom/android/settings/network/ApnSettings;I)V

    .line 155
    .end local v0
    :goto_0
    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    invoke-static {}, Lcom/android/settings/network/ApnSettings;->access$100()Z

    move-result v0

    if-nez v0, :cond_4

    .line 158
    const-string v0, "android.telephony.extra.SUBSCRIPTION_ID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 160
    .local v0, "extraSubId":I
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/network/ApnSettings;->access$400(Lcom/android/settings/network/ApnSettings;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 162
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v1, v0}, Lcom/android/settings/network/ApnSettings;->access$402(Lcom/android/settings/network/ApnSettings;I)I

    .line 163
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v3}, Lcom/android/settings/network/ApnSettings;->access$400(Lcom/android/settings/network/ApnSettings;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/network/ApnSettings;->access$600(Lcom/android/settings/network/ApnSettings;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/network/ApnSettings;->access$502(Lcom/android/settings/network/ApnSettings;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    .line 165
    :cond_3
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$1;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/network/ApnSettings;->access$200(Lcom/android/settings/network/ApnSettings;)V

    .line 168
    .end local v0
    :cond_4
    :goto_1
    return-void
.end method
