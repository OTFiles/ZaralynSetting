.class public final Lcom/android/settings/nfc/PaymentDefaultDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "PaymentDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private mNewDefault:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private buildDialog(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 10
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 76
    :cond_0
    const-string v1, "payment"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    const-string v1, "PaymentDefaultDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t support defaults for category "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v0

    .line 82
    :cond_1
    const/4 v1, 0x0

    .line 83
    .local v1, "requestedPaymentApp":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    const/4 v2, 0x0

    .line 85
    .local v2, "defaultPaymentApp":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v3, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v3}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v3

    .line 86
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 87
    .local v5, "service":Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v6, v5, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 88
    move-object v1, v5

    .line 90
    :cond_2
    iget-boolean v6, v5, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-eqz v6, :cond_3

    .line 91
    move-object v2, v5

    .line 93
    .end local v5
    :cond_3
    goto :goto_0

    .line 95
    :cond_4
    if-nez v1, :cond_5

    .line 96
    const-string v4, "PaymentDefaultDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Component "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not a registered payment service."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return v0

    .line 101
    :cond_5
    iget-object v4, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v4}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object v4

    .line 102
    .local v4, "defaultComponent":Landroid/content/ComponentName;
    if-eqz v4, :cond_6

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 103
    const-string v5, "PaymentDefaultDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Component "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is already default."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v0

    .line 107
    :cond_6
    iput-object p1, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mNewDefault:Landroid/content/ComponentName;

    .line 109
    iget-object v5, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 110
    .local v5, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v6, 0x7f120918

    invoke-virtual {p0, v6}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 111
    const/4 v6, 0x1

    if-nez v2, :cond_7

    .line 112
    const v7, 0x7f120916

    invoke-virtual {p0, v7}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, "formatString":Ljava/lang/String;
    new-array v8, v6, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 114
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/nfc/PaymentDefaultDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    .line 113
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "msg":Ljava/lang/String;
    iput-object v0, v5, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 116
    .end local v0
    .end local v7
    goto :goto_1

    .line 117
    :cond_7
    const v7, 0x7f120917

    invoke-virtual {p0, v7}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 118
    .restart local v7
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 119
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/nfc/PaymentDefaultDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    iget-object v0, v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 120
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v6

    .line 118
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0
    iput-object v0, v5, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 123
    .end local v0
    .end local v7
    :goto_1
    const v0, 0x7f1211be

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 124
    const v0, 0x7f120937

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 125
    iput-object p0, v5, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    iput-object p0, v5, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->setupAlert()V

    .line 129
    return v6

    .line 72
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    :cond_8
    :goto_2
    const-string v1, "PaymentDefaultDialog"

    const-string v2, "Component or category are null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return v0
.end method

.method private sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .line 133
    const/16 v0, 0x20

    const/16 v1, 0xa    # '\n'

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd    # '\r'

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "sanitizedString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_0

    .line 137
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 140
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 60
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object v2, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mNewDefault:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->setResult(I)V

    .line 64
    nop

    .line 68
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance v0, Lcom/android/settings/nfc/PaymentBackend;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "component"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 49
    .local v1, "component":Landroid/content/ComponentName;
    const-string v2, "category"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "category":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/nfc/PaymentDefaultDialog;->setResult(I)V

    .line 52
    invoke-direct {p0, v1, v2}, Lcom/android/settings/nfc/PaymentDefaultDialog;->buildDialog(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->finish()V

    .line 56
    :cond_0
    return-void
.end method
