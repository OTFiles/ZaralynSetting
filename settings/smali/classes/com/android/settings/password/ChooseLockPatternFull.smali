.class public Lcom/android/settings/password/ChooseLockPatternFull;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockPatternFull.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;,
        Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 136
    const-class v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 83
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":android:show_fragment"

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull;->getFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .line 131
    const-class v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 132
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 91
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 142
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "for_fingerprint"

    .line 144
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 145
    .local v0, "forFingerprint":Z
    if-eqz v0, :cond_0

    const v1, 0x7f120805

    goto :goto_0

    .line 146
    :cond_0
    const v1, 0x7f120809

    .line 145
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPatternFull;->setTitle(I)V

    .line 147
    const v1, 0x7f0a00fe

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPatternFull;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 148
    .local v1, "layout":Landroid/widget/LinearLayout;
    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 151
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 157
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
