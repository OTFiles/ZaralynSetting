.class public Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;
.super Ljava/lang/Object;
.source "FirmwareVersionDialogController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final FIRMWARE_VERSION_LABEL_ID:I = 0x7f0a019f

.field static final FIRMWARE_VERSION_VALUE_ID:I = 0x7f0a01a0


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

.field private mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mFunDisallowedBySystem:Z

.field private final mHits:[J

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;)V
    .locals 2
    .param p1, "dialog"    # Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mHits:[J

    .line 52
    iput-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    .line 53
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mUserManager:Landroid/os/UserManager;

    .line 55
    return-void
.end method

.method private registerClickListeners()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    const v1, 0x7f0a019f

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->registerClickListener(ILandroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    const v1, 0x7f0a01a0

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->registerClickListener(ILandroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method


# virtual methods
.method arrayCopy()V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mHits:[J

    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mHits:[J

    iget-object v2, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mHits:[J

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    return-void
.end method

.method public initialize()V
    .locals 3

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->initializeAdminPermissions()V

    .line 87
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->registerClickListeners()V

    .line 89
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const v2, 0x7f0a01a0

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 90
    return-void
.end method

.method initializeAdminPermissions()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mContext:Landroid/content/Context;

    const-string v1, "no_fun"

    .line 108
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 107
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 109
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mContext:Landroid/content/Context;

    const-string v1, "no_fun"

    .line 110
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 109
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mFunDisallowedBySystem:Z

    .line 111
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->arrayCopy()V

    .line 60
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mHits:[J

    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mHits:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 61
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mHits:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_fun"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mFunDisallowedBySystem:Z

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 67
    :cond_0
    const-string v0, "firmwareDialogCtrl"

    const-string v1, "Sorry, no fun for you!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 71
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    const-class v2, Lcom/android/internal/app/PlatLogoActivity;

    .line 73
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "firmwareDialogCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v0
    .end local v1
    :cond_2
    :goto_0
    return-void
.end method
