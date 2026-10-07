.class public Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;
.super Ljava/lang/Object;
.source "SecurityPatchLevelDialogController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final INTENT_URI_DATA:Landroid/net/Uri;

.field static final SECURITY_PATCH_LABEL_ID:I = 0x7f0a03aa

.field static final SECURITY_PATCH_VALUE_ID:I = 0x7f0a03ab


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentPatch:Ljava/lang/String;

.field private final mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

.field private final mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-string v0, "https://source.android.com/security/bulletin/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->INTENT_URI_DATA:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;)V
    .locals 2
    .param p1, "dialog"    # Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    .line 49
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 51
    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getSecurityPatch()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mCurrentPatch:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private registerListeners()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    const v1, 0x7f0a03aa

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->registerClickListener(ILandroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    const v1, 0x7f0a03ab

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->registerClickListener(ILandroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mCurrentPatch:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f0a03ab

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    const v2, 0x7f0a03aa

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->removeSettingFromScreen(I)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->removeSettingFromScreen(I)V

    .line 76
    return-void

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->registerListeners()V

    .line 79
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mCurrentPatch:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 80
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    sget-object v1, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->INTENT_URI_DATA:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "SecurityPatchCtrl"

    const-string v2, "Stop click action on 2131362731: queryIntentActivities() returns empty"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method
