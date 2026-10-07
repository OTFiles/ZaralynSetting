.class public Lcom/android/settings/notification/DeletedChannelsPreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "DeletedChannelsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backend"    # Lcom/android/settings/notification/NotificationBackend;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "deleted"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 4

    .line 41
    invoke-super {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 42
    return v1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/DeletedChannelsPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/notification/DeletedChannelsPreferenceController;->hasValidGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/DeletedChannelsPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/DeletedChannelsPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/DeletedChannelsPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1

    .line 46
    :cond_3
    :goto_0
    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/DeletedChannelsPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/settings/notification/DeletedChannelsPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/DeletedChannelsPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/DeletedChannelsPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result v0

    .line 55
    .local v0, "deletedChannelCount":I
    iget-object v2, p0, Lcom/android/settings/notification/DeletedChannelsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100014

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 55
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    .end local v0
    :cond_0
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 59
    return-void
.end method
