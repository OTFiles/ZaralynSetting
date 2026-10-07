.class public Lcom/android/settings/LauncherSkinChoosePreference;
.super Landroid/support/v7/preference/Preference;
.source "LauncherSkinChoosePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LauncherSkinChoosePreference$OnInitBtnsListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/LauncherSkinChoosePreference$OnInitBtnsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 33
    const v0, 0x7f0d00d1

    invoke-virtual {p0, v0}, Lcom/android/settings/LauncherSkinChoosePreference;->setLayoutResource(I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const v0, 0x7f0d00d1

    invoke-virtual {p0, v0}, Lcom/android/settings/LauncherSkinChoosePreference;->setLayoutResource(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 47
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/LauncherSkinChoosePreference;->mListener:Lcom/android/settings/LauncherSkinChoosePreference$OnInitBtnsListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/settings/LauncherSkinChoosePreference;->mListener:Lcom/android/settings/LauncherSkinChoosePreference$OnInitBtnsListener;

    const v1, 0x7f0a0241

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0487

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0242

    .line 50
    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0488

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 49
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/settings/LauncherSkinChoosePreference$OnInitBtnsListener;->onInitBtns(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;)V

    .line 52
    :cond_0
    return-void
.end method

.method public setOnInitBtnsListener(Lcom/android/settings/LauncherSkinChoosePreference$OnInitBtnsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/LauncherSkinChoosePreference$OnInitBtnsListener;

    .line 42
    iput-object p1, p0, Lcom/android/settings/LauncherSkinChoosePreference;->mListener:Lcom/android/settings/LauncherSkinChoosePreference$OnInitBtnsListener;

    .line 43
    return-void
.end method
