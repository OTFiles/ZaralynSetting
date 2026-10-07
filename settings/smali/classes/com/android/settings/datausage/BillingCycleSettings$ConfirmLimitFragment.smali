.class public Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLimitFragment"
.end annotation


# static fields
.field static final EXTRA_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 403
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/datausage/BillingCycleSettings;)V
    .locals 10
    .param p0, "parent"    # Lcom/android/settings/datausage/BillingCycleSettings;

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 412
    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->access$000(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 413
    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-nez v0, :cond_1

    return-void

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 416
    .local v1, "res":Landroid/content/res/Resources;
    iget-wide v2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-float v2, v2

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    .line 420
    .local v2, "minLimitBytes":J
    const-wide v4, 0x140000000L

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 422
    .local v4, "limitBytes":J
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 423
    .local v6, "args":Landroid/os/Bundle;
    const-string v7, "limitBytes"

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 425
    new-instance v7, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;

    invoke-direct {v7}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;-><init>()V

    .line 426
    .local v7, "dialog":Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;
    invoke-virtual {v7, v6}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->setArguments(Landroid/os/Bundle;)V

    .line 427
    const/4 v8, 0x0

    invoke-virtual {v7, p0, v8}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const-string v9, "confirmLimit"

    invoke-virtual {v7, v8, v9}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 429
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 433
    const/16 v0, 0x227

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/BillingCycleSettings;

    .line 451
    .local v0, "target":Lcom/android/settings/datausage/BillingCycleSettings;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    return-void

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "limitBytes"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 453
    .local v1, "limitBytes":J
    if-eqz v0, :cond_1

    .line 454
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    .line 456
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/datausage/BillingCycleSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "set_data_limit"

    const/4 v5, 0x1

    .line 457
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 458
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 440
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 441
    const v2, 0x7f12048b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 442
    const v2, 0x7f12048a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 443
    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 444
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 445
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 440
    return-object v1
.end method
