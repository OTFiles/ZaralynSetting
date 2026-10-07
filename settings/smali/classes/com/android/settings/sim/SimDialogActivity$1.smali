.class Lcom/android/settings/sim/SimDialogActivity$1;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimDialogActivity;->displayPreferredDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimDialogActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sir:Landroid/telephony/SubscriptionInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimDialogActivity;Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/sim/SimDialogActivity;

    .line 92
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$1;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    iput-object p2, p0, Lcom/android/settings/sim/SimDialogActivity$1;->val$sir:Landroid/telephony/SubscriptionInfo;

    iput-object p3, p0, Lcom/android/settings/sim/SimDialogActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 95
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$1;->val$sir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 96
    .local v0, "subId":I
    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity$1;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    .line 97
    invoke-static {v1, v0}, Lcom/android/settings/sim/SimDialogActivity;->access$000(Lcom/android/settings/sim/SimDialogActivity;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 98
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/settings/sim/SimDialogActivity;->access$100(Landroid/content/Context;I)V

    .line 99
    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/settings/sim/SimDialogActivity;->access$200(Landroid/content/Context;I)V

    .line 100
    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity$1;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v2, v1}, Lcom/android/settings/sim/SimDialogActivity;->access$300(Lcom/android/settings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    .line 101
    iget-object v2, p0, Lcom/android/settings/sim/SimDialogActivity$1;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v2}, Lcom/android/settings/sim/SimDialogActivity;->finish()V

    .line 102
    return-void
.end method
