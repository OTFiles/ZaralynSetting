.class public abstract Lcom/android/settingslib/core/AbstractPreferenceController;
.super Ljava/lang/Object;
.source "AbstractPreferenceController.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field public mIsAvailable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mIsAvailable:Z

    .line 16
    iput-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 23
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "prefKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 26
    instance-of v1, p0, Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 28
    .local v1, "preference":Landroid/support/v7/preference/Preference;
    move-object v2, p0

    check-cast v2, Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 30
    .end local v1
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public abstract getPreferenceKey()Ljava/lang/String;
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isAvailable()Z
.end method

.method protected refreshSummary(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 47
    if-nez p1, :cond_0

    .line 48
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 51
    .local v0, "summary":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 54
    return-void

    .line 56
    :cond_1
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;
    .locals 0
    .param p1, "visiable"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mIsAvailable:Z

    .line 68
    return-object p0
.end method

.method protected final setVisible(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "isVisible"    # Z

    .line 90
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 91
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p3}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 94
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroid/support/v7/preference/Preference;)V

    .line 41
    return-void
.end method
