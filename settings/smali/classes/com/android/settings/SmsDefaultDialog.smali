.class public final Lcom/android/settings/SmsDefaultDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SmsDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SmsDefaultDialog$AppListAdapter;
    }
.end annotation


# instance fields
.field private mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private buildDialog(Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 87
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/SmsDefaultDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 88
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 90
    return v2

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SmsDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 93
    .local v1, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x7f120d4e

    invoke-virtual {p0, v3}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 94
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 95
    iget-object v3, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 98
    const/4 v3, 0x0

    .line 99
    .local v3, "oldSmsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    invoke-static {p0, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v5

    .line 100
    .local v5, "oldSmsComponent":Landroid/content/ComponentName;
    if-eqz v5, :cond_1

    .line 101
    nop

    .line 102
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-static {v6, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v3

    .line 103
    iget-object v6, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v7, v7, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 105
    return v2

    .line 110
    :cond_1
    if-eqz v3, :cond_2

    .line 111
    const v6, 0x7f120d4d

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 112
    invoke-virtual {v8, p0}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 113
    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v4

    .line 111
    invoke-virtual {p0, v6, v7}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 115
    :cond_2
    const v6, 0x7f120d4f

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 116
    invoke-virtual {v8, p0}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 115
    invoke-virtual {p0, v6, v7}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 118
    :goto_0
    const v2, 0x7f1211be

    invoke-virtual {p0, v2}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 119
    const v2, 0x7f120937

    invoke-virtual {p0, v2}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 120
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 121
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 122
    .end local v3
    .end local v5
    goto :goto_1

    .line 124
    :cond_3
    new-instance v3, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;

    invoke-direct {v3, p0}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;-><init>(Lcom/android/settings/SmsDefaultDialog;)V

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 125
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    const v3, 0x7f120358

    invoke-virtual {p0, v3}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 127
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 128
    iget-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 130
    return v2

    .line 133
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->setupAlert()V

    .line 135
    return v4
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 64
    const/4 v0, -0x1

    packed-switch p2, :pswitch_data_0

    .line 72
    if-ltz p2, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/settings/SmsDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;

    .line 74
    .local v1, "adapter":Lcom/android/settings/SmsDefaultDialog$AppListAdapter;
    invoke-virtual {v1, p2}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->isSelected(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    invoke-virtual {v1, p2}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    invoke-static {v2, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    .end local v1
    .end local v2
    goto :goto_0

    .line 66
    :pswitch_0    # -0x1
    iget-object v1, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    .line 68
    goto :goto_0

    .line 70
    :pswitch_1    # -0x2
    nop

    .line 84
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1    # -0x2
        :pswitch_0    # -0x1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 51
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    .line 57
    invoke-direct {p0, v1}, Lcom/android/settings/SmsDefaultDialog;->buildDialog(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->finish()V

    .line 60
    :cond_0
    return-void
.end method
