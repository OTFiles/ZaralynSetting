.class public abstract Lcom/android/settings/widget/RadioButtonPickerFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "RadioButtonPickerFragment.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;


# static fields
.field static final EXTRA_FOR_WORK:Ljava/lang/String; = "for_work"


# instance fields
.field private final mCandidates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mUserId:I

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mCandidates:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected addStaticPreferences(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 109
    return-void
.end method

.method public bindPreference(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 1
    .param p1, "pref"    # Lcom/android/settings/widget/RadioButtonPreference;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/android/settingslib/widget/CandidateInfo;
    .param p4, "defaultKey"    # Ljava/lang/String;

    .line 175
    invoke-virtual {p3}, Lcom/android/settingslib/widget/CandidateInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {p3}, Lcom/android/settingslib/widget/CandidateInfo;->loadIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->setSafeIcon(Landroid/support/v7/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    .line 177
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 178
    invoke-static {p4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 181
    :cond_0
    iget-boolean v0, p3, Lcom/android/settingslib/widget/CandidateInfo;->enabled:Z

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setEnabled(Z)V

    .line 182
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 183
    return-object p1
.end method

.method public bindPreferenceExtra(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pref"    # Lcom/android/settings/widget/RadioButtonPreference;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/android/settingslib/widget/CandidateInfo;
    .param p4, "defaultKey"    # Ljava/lang/String;
    .param p5, "systemDefaultKey"    # Ljava/lang/String;

    .line 129
    return-void
.end method

.method protected getCandidate(Ljava/lang/String;)Lcom/android/settingslib/widget/CandidateInfo;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mCandidates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/CandidateInfo;

    return-object v0
.end method

.method protected abstract getCandidates()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getDefaultKey()Ljava/lang/String;
.end method

.method protected abstract getPreferenceScreenResId()I
.end method

.method protected getRadioButtonPreferenceCustomLayoutResId()I
    .locals 1

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method protected getSystemDefaultKey()Ljava/lang/String;
    .locals 1

    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public mayCheckOnlyRadioButton()V
    .locals 4

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 208
    .local v0, "screen":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 209
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 210
    .local v1, "onlyPref":Landroid/support/v7/preference/Preference;
    instance-of v3, v1, Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v3, :cond_0

    .line 211
    move-object v3, v1

    check-cast v3, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 214
    .end local v1
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 55
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserManager:Landroid/os/UserManager;

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    .local v0, "arguments":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 59
    .local v1, "mForWork":Z
    if-eqz v0, :cond_0

    .line 60
    const-string v2, "for_work"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v2}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v2

    .line 63
    .local v2, "managedProfile":Landroid/os/UserHandle;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    :goto_0
    iput v3, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    .line 66
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .line 70
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCandidates()V

    .line 72
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->setHasOptionsMenu(Z)V

    .line 79
    return-object v0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 1
    .param p1, "selected"    # Lcom/android/settings/widget/RadioButtonPreference;

    .line 87
    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "selectedKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onRadioButtonConfirmed(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method protected onRadioButtonConfirmed(Ljava/lang/String;)V
    .locals 1
    .param p1, "selectedKey"    # Ljava/lang/String;

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->setDefaultKey(Ljava/lang/String;)Z

    move-result v0

    .line 117
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCheckedState(Ljava/lang/String;)V

    .line 120
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onSelectionPerformed(Z)V

    .line 121
    return-void
.end method

.method protected onSelectionPerformed(Z)V
    .locals 0
    .param p1, "success"    # Z

    .line 95
    return-void
.end method

.method protected abstract setDefaultKey(Ljava/lang/String;)Z
.end method

.method protected shouldShowItemNone()Z
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public updateCandidates()V
    .locals 14

    .line 133
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mCandidates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getCandidates()Ljava/util/List;

    move-result-object v0

    .line 135
    .local v0, "candidateList":Ljava/util/List;, "Ljava/util/List<+Lcom/android/settingslib/widget/CandidateInfo;>;"
    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/CandidateInfo;

    .line 137
    .local v2, "info":Lcom/android/settingslib/widget/CandidateInfo;
    iget-object v3, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mCandidates:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .end local v2
    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getDefaultKey()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "defaultKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getSystemDefaultKey()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "systemDefaultKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    .line 143
    .local v3, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 144
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/RadioButtonPickerFragment;->addStaticPreferences(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getRadioButtonPreferenceCustomLayoutResId()I

    move-result v4

    .line 147
    .local v4, "customLayoutResId":I
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->shouldShowItemNone()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 148
    new-instance v5, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 149
    .local v5, "nonePref":Lcom/android/settings/widget/RadioButtonPreference;
    if-lez v4, :cond_1

    .line 150
    invoke-virtual {v5, v4}, Lcom/android/settings/widget/RadioButtonPreference;->setLayoutResource(I)V

    .line 152
    :cond_1
    const v6, 0x7f0801c4

    invoke-virtual {v5, v6}, Lcom/android/settings/widget/RadioButtonPreference;->setIcon(I)V

    .line 153
    const v6, 0x7f12012d

    invoke-virtual {v5, v6}, Lcom/android/settings/widget/RadioButtonPreference;->setTitle(I)V

    .line 154
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 155
    invoke-virtual {v5, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 156
    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 158
    .end local v5
    :cond_2
    if-eqz v0, :cond_4

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/android/settingslib/widget/CandidateInfo;

    .line 160
    .local v12, "info":Lcom/android/settingslib/widget/CandidateInfo;
    new-instance v5, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    move-object v13, v5

    .line 161
    .local v13, "pref":Lcom/android/settings/widget/RadioButtonPreference;
    if-lez v4, :cond_3

    .line 162
    invoke-virtual {v13, v4}, Lcom/android/settings/widget/RadioButtonPreference;->setLayoutResource(I)V

    .line 164
    :cond_3
    invoke-virtual {v12}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v13, v5, v12, v1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->bindPreference(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPreference;

    .line 165
    invoke-virtual {v12}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    move-object v5, p0

    move-object v6, v13

    move-object v8, v12

    move-object v9, v1

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/widget/RadioButtonPickerFragment;->bindPreferenceExtra(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v3, v13}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 167
    .end local v12
    .end local v13
    goto :goto_1

    .line 169
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->mayCheckOnlyRadioButton()V

    .line 170
    return-void
.end method

.method public updateCheckedState(Ljava/lang/String;)V
    .locals 7
    .param p1, "selectedKey"    # Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 189
    .local v0, "screen":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 191
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 192
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 193
    .local v3, "pref":Landroid/support/v7/preference/Preference;
    instance-of v4, v3, Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v4, :cond_0

    .line 194
    move-object v4, v3

    check-cast v4, Lcom/android/settings/widget/RadioButtonPreference;

    .line 195
    .local v4, "radioPref":Lcom/android/settings/widget/RadioButtonPreference;
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 196
    .local v5, "newCheckedState":Z
    invoke-virtual {v4}, Lcom/android/settings/widget/RadioButtonPreference;->isChecked()Z

    move-result v6

    if-eq v6, v5, :cond_0

    .line 197
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 191
    .end local v3
    .end local v4
    .end local v5
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    .end local v1
    .end local v2
    :cond_1
    return-void
.end method
