.class public Lcom/android/settings/notification/NotificationLockscreenPreference;
.super Lcom/android/settings/RestrictedListPreference;
.source "NotificationLockscreenPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;
    }
.end annotation


# instance fields
.field private mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mAllowRemoteInput:Z

.field private mListener:Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;

.field private mRemoteInputCheckBoxEnabled:Z

.field private mShowRemoteInput:Z

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RestrictedListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mRemoteInputCheckBoxEnabled:Z

    .line 46
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mUserId:I

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationLockscreenPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationLockscreenPreference;

    .line 40
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mShowRemoteInput:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/NotificationLockscreenPreference;IZ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationLockscreenPreference;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationLockscreenPreference;->checkboxVisibilityForSelectedIndex(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/notification/NotificationLockscreenPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationLockscreenPreference;
    .param p1, "x1"    # Z

    .line 40
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/notification/NotificationLockscreenPreference;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationLockscreenPreference;

    .line 40
    iget-object v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method

.method private checkboxVisibilityForSelectedIndex(IZ)I
    .locals 1
    .param p1, "selected"    # I
    .param p2, "showRemoteAtAll"    # Z

    .line 137
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mRemoteInputCheckBoxEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :cond_0
    const/16 v0, 0x8

    .line 137
    :goto_0
    return v0
.end method


# virtual methods
.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 4

    .line 120
    new-instance v0, Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;-><init>(Lcom/android/settings/RestrictedListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method protected isAutoClosePreference()Z
    .locals 1

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-super {p0}, Lcom/android/settings/RestrictedListPreference;->onClick()V

    .line 69
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .line 125
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedListPreference;->onDialogClosed(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_allow_remote_input"

    .line 127
    iget-boolean v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    .line 126
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    return-void
.end method

.method protected onDialogCreated(Landroid/app/Dialog;)V
    .locals 4
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedListPreference;->onDialogCreated(Landroid/app/Dialog;)V

    .line 90
    invoke-virtual {p1}, Landroid/app/Dialog;->create()V

    .line 91
    const v0, 0x7f0a0259

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 92
    .local v0, "checkbox":Landroid/widget/CheckBox;
    iget-boolean v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 93
    iget-object v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mListener:Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    iget-object v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 96
    const v1, 0x7f0a035c

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, "restricted":Landroid/view/View;
    iget-object v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v2, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAdminRestrictingRemoteInput:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v2, :cond_2

    .line 100
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 101
    const v2, 0x1020214

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mListener:Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;

    .line 102
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_2
    return-void
.end method

.method protected onDialogStateRestored(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 108
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedListPreference;->onDialogStateRestored(Landroid/app/Dialog;Landroid/os/Bundle;)V

    .line 109
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 110
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    .line 112
    .local v1, "selectedPosition":I
    const v2, 0x1020214

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 113
    .local v2, "panel":Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mShowRemoteInput:Z

    invoke-direct {p0, v1, v3}, Lcom/android/settings/notification/NotificationLockscreenPreference;->checkboxVisibilityForSelectedIndex(IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v3, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mListener:Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;

    invoke-virtual {v3, v2}, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->setView(Landroid/view/View;)V

    .line 116
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "innerListener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 79
    new-instance v0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;-><init>(Lcom/android/settings/notification/NotificationLockscreenPreference;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mListener:Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->createListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getSelectedValuePos()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mListener:Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mShowRemoteInput:Z

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_screen_allow_remote_input"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference;->mAllowRemoteInput:Z

    .line 84
    const v0, 0x7f0d00dd

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 85
    return-void
.end method
