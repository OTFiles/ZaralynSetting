.class Lcom/android/settings/notification/ZenDeleteRuleDialog$1;
.super Ljava/lang/Object;
.source "ZenDeleteRuleDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenDeleteRuleDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenDeleteRuleDialog;

.field final synthetic val$arguments:Landroid/os/Bundle;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenDeleteRuleDialog;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenDeleteRuleDialog;

    .line 71
    iput-object p1, p0, Lcom/android/settings/notification/ZenDeleteRuleDialog$1;->this$0:Lcom/android/settings/notification/ZenDeleteRuleDialog;

    iput-object p2, p0, Lcom/android/settings/notification/ZenDeleteRuleDialog$1;->val$arguments:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/settings/notification/ZenDeleteRuleDialog$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 74
    iget-object v0, p0, Lcom/android/settings/notification/ZenDeleteRuleDialog$1;->val$arguments:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/android/settings/notification/ZenDeleteRuleDialog;->mPositiveClickListener:Lcom/android/settings/notification/ZenDeleteRuleDialog$PositiveClickListener;

    iget-object v1, p0, Lcom/android/settings/notification/ZenDeleteRuleDialog$1;->val$id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/settings/notification/ZenDeleteRuleDialog$PositiveClickListener;->onOk(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method
