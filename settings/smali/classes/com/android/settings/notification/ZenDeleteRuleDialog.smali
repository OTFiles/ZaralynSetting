.class public Lcom/android/settings/notification/ZenDeleteRuleDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ZenDeleteRuleDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenDeleteRuleDialog$PositiveClickListener;
    }
.end annotation


# static fields
.field protected static mPositiveClickListener:Lcom/android/settings/notification/ZenDeleteRuleDialog$PositiveClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/notification/ZenDeleteRuleDialog$PositiveClickListener;)V
    .locals 4
    .param p0, "parent"    # Landroid/app/Fragment;
    .param p1, "ruleName"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/settings/notification/ZenDeleteRuleDialog$PositiveClickListener;

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "zen_rule_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "zen_rule_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sput-object p3, Lcom/android/settings/notification/ZenDeleteRuleDialog;->mPositiveClickListener:Lcom/android/settings/notification/ZenDeleteRuleDialog$PositiveClickListener;

    .line 50
    new-instance v1, Lcom/android/settings/notification/ZenDeleteRuleDialog;

    invoke-direct {v1}, Lcom/android/settings/notification/ZenDeleteRuleDialog;-><init>()V

    .line 51
    .local v1, "dialog":Lcom/android/settings/notification/ZenDeleteRuleDialog;
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenDeleteRuleDialog;->setArguments(Landroid/os/Bundle;)V

    .line 52
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/notification/ZenDeleteRuleDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "ZenDeleteRuleDialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenDeleteRuleDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 58
    const/16 v0, 0x4f2

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenDeleteRuleDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v1, "zen_rule_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "ruleName":Ljava/lang/String;
    const-string v2, "zen_rule_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "id":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenDeleteRuleDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 68
    const v5, 0x7f121201

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/notification/ZenDeleteRuleDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 69
    const v4, 0x7f120358

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/notification/ZenDeleteRuleDialog$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/settings/notification/ZenDeleteRuleDialog$1;-><init>(Lcom/android/settings/notification/ZenDeleteRuleDialog;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 70
    const v5, 0x7f121200

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 78
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 79
    .local v3, "dialog":Landroid/app/AlertDialog;
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 80
    .local v4, "messageView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 81
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTextDirection(I)V

    .line 83
    :cond_0
    return-object v3
.end method
