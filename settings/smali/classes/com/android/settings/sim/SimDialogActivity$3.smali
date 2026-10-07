.class Lcom/android/settings/sim/SimDialogActivity$3;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimDialogActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:I

.field final synthetic val$subInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimDialogActivity;ILjava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/sim/SimDialogActivity;

    .line 159
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$3;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    iput p2, p0, Lcom/android/settings/sim/SimDialogActivity$3;->val$id:I

    iput-object p3, p0, Lcom/android/settings/sim/SimDialogActivity$3;->val$subInfoList:Ljava/util/List;

    iput-object p4, p0, Lcom/android/settings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "value"    # I

    .line 165
    iget v0, p0, Lcom/android/settings/sim/SimDialogActivity$3;->val$id:I

    packed-switch v0, :pswitch_data_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dialog type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/sim/SimDialogActivity$3;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in SIM dialog."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :pswitch_0    # 0x2
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$3;->val$subInfoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 180
    .local v0, "sir":Landroid/telephony/SubscriptionInfo;
    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/sim/SimDialogActivity;->access$200(Landroid/content/Context;I)V

    .line 181
    goto :goto_1

    .line 171
    .end local v0
    :pswitch_1    # 0x1
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    .line 172
    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 173
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    nop

    .line 174
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v1

    .line 175
    .local v1, "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity$3;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    .line 176
    const/4 v3, 0x1

    if-ge p2, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p2, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 175
    :goto_0
    invoke-static {v2, v3}, Lcom/android/settings/sim/SimDialogActivity;->access$300(Lcom/android/settings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    .line 177
    goto :goto_1

    .line 167
    .end local v0
    .end local v1
    :pswitch_2    # 0x0
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$3;->val$subInfoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 168
    .local v0, "sir":Landroid/telephony/SubscriptionInfo;
    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/sim/SimDialogActivity;->access$100(Landroid/content/Context;I)V

    .line 169
    nop

    .line 187
    .end local v0
    :goto_1
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$3;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings/sim/SimDialogActivity;->finish()V

    .line 188
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method
