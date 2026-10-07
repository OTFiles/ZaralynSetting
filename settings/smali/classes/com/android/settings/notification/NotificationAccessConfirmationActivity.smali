.class public Lcom/android/settings/notification/NotificationAccessConfirmationActivity;
.super Landroid/app/Activity;
.source "NotificationAccessConfirmationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mNm:Landroid/app/NotificationManager;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lcom/android/settings/notification/NotificationAccessConfirmationActivity;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "a"    # Landroid/content/DialogInterface;
    .param p2, "b"    # I

    .line 75
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->onAllow()V

    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lcom/android/settings/notification/NotificationAccessConfirmationActivity;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "a"    # Landroid/content/DialogInterface;
    .param p2, "b"    # I

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->cancel()V

    return-void
.end method

.method private onAllow()V
    .locals 5

    .line 101
    const-string v0, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    .line 103
    .local v0, "requiredPermission":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mComponentName:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 104
    .local v1, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    const-string v2, "NotificationAccessConfirmationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " lacks permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 112
    .end local v1
    :cond_0
    nop

    .line 114
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mNm:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mComponentName:Landroid/content/ComponentName;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->finish()V

    .line 117
    return-void

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "NotificationAccessConfirmationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get service info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->finish()V

    .line 133
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->finish()V

    .line 142
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 121
    invoke-static {p0, p1}, Lcom/android/internal/app/AlertActivity;->dispatchPopulateAccessibilityEvent(Landroid/app/Activity;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 128
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mNm:Landroid/app/NotificationManager;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "component_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mComponentName:Landroid/content/ComponentName;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    const/16 v2, -0x2710

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->mUserId:I

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "package_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "pkgTitle":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 68
    .local v1, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const v5, 0x7f120971

    invoke-virtual {p0, v5, v3}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 71
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const v3, 0x7f120970

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 74
    const v2, 0x7f1200da

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 75
    new-instance v2, Lcom/android/settings/notification/-$$Lambda$NotificationAccessConfirmationActivity$UvveyFMEwlZ6m4ViLmcVExulBE8;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/-$$Lambda$NotificationAccessConfirmationActivity$UvveyFMEwlZ6m4ViLmcVExulBE8;-><init>(Lcom/android/settings/notification/NotificationAccessConfirmationActivity;)V

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 76
    const v2, 0x7f120503

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 77
    new-instance v2, Lcom/android/settings/notification/-$$Lambda$NotificationAccessConfirmationActivity$hd7i7CSD_dVpjvK__hXE8eDM2I0;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/-$$Lambda$NotificationAccessConfirmationActivity$hd7i7CSD_dVpjvK__hXE8eDM2I0;-><init>(Lcom/android/settings/notification/NotificationAccessConfirmationActivity;)V

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 78
    nop

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {p0, p0, v2}, Lcom/android/internal/app/AlertController;->create(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;

    move-result-object v2

    .line 80
    invoke-virtual {v2, v1}, Lcom/android/internal/app/AlertController;->installContent(Lcom/android/internal/app/AlertController$AlertParams;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 84
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 98
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 91
    return-void
.end method
