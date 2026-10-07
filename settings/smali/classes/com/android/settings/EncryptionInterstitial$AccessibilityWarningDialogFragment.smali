.class public Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "EncryptionInterstitial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EncryptionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityWarningDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;
    .locals 3
    .param p0, "passwordQuality"    # I

    .line 212
    new-instance v0, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;-><init>()V

    .line 213
    .local v0, "fragment":Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 214
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "extra_password_quality"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    invoke-virtual {v0, v1}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 216
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 264
    const/16 v0, 0x245

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 269
    nop

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;

    .line 271
    .local v0, "fragment":Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;
    if-eqz v0, :cond_1

    .line 272
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 273
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->access$100(Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;Z)V

    .line 274
    invoke-virtual {v0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->startLockIntent()V

    goto :goto_0

    .line 275
    :cond_0
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 276
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->access$100(Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;Z)V

    .line 279
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_password_quality"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_0

    .line 234
    const v0, 0x7f1205bc

    .line 235
    .local v0, "titleId":I
    const v1, 0x7f1205b9

    goto :goto_0

    .line 230
    .end local v0
    :cond_0
    const v0, 0x7f1205be

    .line 231
    .restart local v0
    const v1, 0x7f1205bb

    .line 232
    .local v1, "messageId":I
    goto :goto_0

    .line 225
    .end local v0
    .end local v1
    :cond_1
    const v0, 0x7f1205bd

    .line 226
    .restart local v0
    const v1, 0x7f1205ba

    .line 227
    .restart local v1
    nop

    .line 235
    :goto_0
    nop

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 241
    .local v2, "activity":Landroid/app/Activity;
    nop

    .line 242
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    const/4 v4, -0x1

    .line 243
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v3

    .line 246
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 248
    const-string v4, ""

    .local v4, "exampleAccessibility":Ljava/lang/CharSequence;
    goto :goto_1

    .line 250
    .end local v4
    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 251
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 253
    .restart local v4
    :goto_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v4, v8, v5

    .line 255
    invoke-virtual {p0, v1, v8}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 256
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    .line 257
    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    .line 258
    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 259
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 253
    return-object v5
.end method
