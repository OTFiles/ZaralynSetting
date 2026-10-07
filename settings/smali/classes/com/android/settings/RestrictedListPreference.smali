.class public Lcom/android/settings/RestrictedListPreference;
.super Lcom/android/settings/CustomListPreference;
.source "RestrictedListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/RestrictedListPreference$RestrictedItem;,
        Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;,
        Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;
    }
.end annotation


# instance fields
.field private final mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field private mProfileUserId:I

.field private mRequiresActiveUnlockedProfile:Z

.field private final mRestrictedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/RestrictedListPreference$RestrictedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/RestrictedListPreference;->mRequiresActiveUnlockedProfile:Z

    .line 58
    const v0, 0x7f0d0182

    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedListPreference;->setWidgetLayoutResource(I)V

    .line 59
    new-instance v0, Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/RestrictedListPreference;->mRequiresActiveUnlockedProfile:Z

    .line 65
    new-instance v0, Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;)Lcom/android/settings/RestrictedListPreference$RestrictedItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RestrictedListPreference;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/RestrictedListPreference;->getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/android/settings/RestrictedListPreference$RestrictedItem;

    move-result-object v0

    return-object v0
.end method

.method private getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/android/settings/RestrictedListPreference$RestrictedItem;
    .locals 4
    .param p1, "entryValue"    # Ljava/lang/CharSequence;

    .line 151
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 152
    return-object v0

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/RestrictedListPreference$RestrictedItem;

    .line 155
    .local v2, "item":Lcom/android/settings/RestrictedListPreference$RestrictedItem;
    iget-object v3, v2, Lcom/android/settings/RestrictedListPreference$RestrictedItem;->entryValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    return-object v2

    .line 158
    .end local v2
    :cond_1
    goto :goto_0

    .line 159
    :cond_2
    return-object v0
.end method


# virtual methods
.method public addRestrictedItem(Lcom/android/settings/RestrictedListPreference$RestrictedItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/settings/RestrictedListPreference$RestrictedItem;

    .line 143
    iget-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public clearRestrictedItems()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    return-void
.end method

.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 4

    .line 163
    new-instance v0, Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference;->getSelectedValuePos()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;-><init>(Lcom/android/settings/RestrictedListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;I)V

    .line 163
    return-object v0
.end method

.method public getSelectedValuePos()I
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "selectedValue":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 171
    .local v1, "selectedIndex":I
    :goto_0
    return v1
.end method

.method public isDisabledByAdmin()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method public isRestrictedForEntry(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "entry"    # Ljava/lang/CharSequence;

    .line 131
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 132
    return v0

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/RestrictedListPreference$RestrictedItem;

    .line 135
    .local v2, "item":Lcom/android/settings/RestrictedListPreference$RestrictedItem;
    iget-object v3, v2, Lcom/android/settings/RestrictedListPreference$RestrictedItem;->entry:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    const/4 v0, 0x1

    return v0

    .line 138
    .end local v2
    :cond_1
    goto :goto_0

    .line 139
    :cond_2
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 72
    const v0, 0x7f0a035a

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "restrictedIcon":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference;->isDisabledByAdmin()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :cond_1
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference;->createListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 178
    return-void
.end method

.method public performClick()V
    .locals 3

    .line 80
    iget-boolean v0, p0, Lcom/android/settings/RestrictedListPreference;->mRequiresActiveUnlockedProfile:Z

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/RestrictedListPreference;->mProfileUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    return-void

    .line 88
    :cond_0
    nop

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 90
    .local v0, "manager":Landroid/app/KeyguardManager;
    iget v1, p0, Lcom/android/settings/RestrictedListPreference;->mProfileUserId:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget v1, p0, Lcom/android/settings/RestrictedListPreference;->mProfileUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v1

    .line 93
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void

    .line 98
    .end local v0
    .end local v1
    :cond_1
    iget-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    invoke-super {p0}, Lcom/android/settings/CustomListPreference;->performClick()V

    .line 101
    :cond_2
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1
    .param p1, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 113
    iget-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference;->notifyChanged()V

    .line 116
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 105
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    .line 107
    return-void

    .line 109
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->setEnabled(Z)V

    .line 110
    return-void
.end method

.method public setProfileUserId(I)V
    .locals 0
    .param p1, "profileUserId"    # I

    .line 127
    iput p1, p0, Lcom/android/settings/RestrictedListPreference;->mProfileUserId:I

    .line 128
    return-void
.end method

.method public setRequiresActiveUnlockedProfile(Z)V
    .locals 0
    .param p1, "reqState"    # Z

    .line 123
    iput-boolean p1, p0, Lcom/android/settings/RestrictedListPreference;->mRequiresActiveUnlockedProfile:Z

    .line 124
    return-void
.end method
