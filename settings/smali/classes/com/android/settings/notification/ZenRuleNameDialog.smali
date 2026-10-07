.class public Lcom/android/settings/notification/ZenRuleNameDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ZenRuleNameDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;
    }
.end annotation


# static fields
.field protected static mPositiveClickListener:Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenRuleNameDialog;Landroid/widget/EditText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenRuleNameDialog;
    .param p1, "x1"    # Landroid/widget/EditText;

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenRuleNameDialog;->trimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTitleResource(Landroid/net/Uri;Z)I
    .locals 3
    .param p1, "conditionId"    # Landroid/net/Uri;
    .param p2, "isNew"    # Z

    .line 113
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    .line 114
    .local v0, "isEvent":Z
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v1

    .line 115
    .local v1, "isTime":Z
    const v2, 0x7f121235

    .line 116
    .local v2, "titleResource":I
    if-eqz p2, :cond_1

    .line 117
    if-eqz v0, :cond_0

    .line 118
    const v2, 0x7f1211d1

    goto :goto_0

    .line 119
    :cond_0
    if-eqz v1, :cond_1

    .line 120
    const v2, 0x7f1211d3

    .line 123
    :cond_1
    :goto_0
    return v2
.end method

.method public static show(Landroid/app/Fragment;Ljava/lang/String;Landroid/net/Uri;Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;)V
    .locals 4
    .param p0, "parent"    # Landroid/app/Fragment;
    .param p1, "ruleName"    # Ljava/lang/String;
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "listener"    # Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "zen_rule_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "extra_zen_condition_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    sput-object p3, Lcom/android/settings/notification/ZenRuleNameDialog;->mPositiveClickListener:Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;

    .line 61
    new-instance v1, Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-direct {v1}, Lcom/android/settings/notification/ZenRuleNameDialog;-><init>()V

    .line 62
    .local v1, "dialog":Lcom/android/settings/notification/ZenRuleNameDialog;
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenRuleNameDialog;->setArguments(Landroid/os/Bundle;)V

    .line 63
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/notification/ZenRuleNameDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "ZenRuleNameDialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenRuleNameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private trimmedText(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 1
    .param p1, "editText"    # Landroid/widget/EditText;

    .line 109
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 44
    const/16 v0, 0x4f5

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleNameDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v1, "extra_zen_condition_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 71
    .local v1, "conditionId":Landroid/net/Uri;
    const-string v2, "zen_rule_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "ruleName":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 74
    .local v5, "isNew":Z
    :goto_0
    move-object v6, v2

    .line 75
    .local v6, "originalRuleName":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleNameDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 76
    .local v7, "context":Landroid/content/Context;
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0d024a

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 78
    .local v3, "v":Landroid/view/View;
    const v8, 0x7f0a0507

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 79
    .local v8, "editText":Landroid/widget/EditText;
    if-nez v5, :cond_1

    .line 81
    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 85
    :cond_1
    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 86
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-direct {p0, v1, v5}, Lcom/android/settings/notification/ZenRuleNameDialog;->getTitleResource(Landroid/net/Uri;Z)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 88
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 89
    if-eqz v5, :cond_2

    const v9, 0x7f1211d0

    goto :goto_1

    :cond_2
    const v9, 0x7f1209ba

    :goto_1
    new-instance v11, Lcom/android/settings/notification/ZenRuleNameDialog$1;

    invoke-direct {v11, p0, v8, v5, v6}, Lcom/android/settings/notification/ZenRuleNameDialog$1;-><init>(Lcom/android/settings/notification/ZenRuleNameDialog;Landroid/widget/EditText;ZLjava/lang/CharSequence;)V

    invoke-virtual {v4, v9, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v9, 0x7f120358

    .line 104
    invoke-virtual {v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 105
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 86
    return-object v4
.end method
