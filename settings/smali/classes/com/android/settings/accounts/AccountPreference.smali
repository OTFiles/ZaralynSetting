.class public Lcom/android/settings/accounts/AccountPreference;
.super Landroid/support/v7/preference/Preference;
.source "AccountPreference.java"


# instance fields
.field private mShowTypeIcon:Z

.field private mStatus:I

.field private mSyncStatusIcon:Landroid/widget/ImageView;


# direct methods
.method private getSyncContentDescription(I)Ljava/lang/String;
    .locals 4
    .param p1, "status"    # I

    .line 140
    const v0, 0x7f12007f

    packed-switch p1, :pswitch_data_0

    .line 150
    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 148
    :pswitch_0    # 0x3
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120080

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :pswitch_1    # 0x2
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 144
    :pswitch_2    # 0x1
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12007d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :pswitch_3    # 0x0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12007e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3    # 0x0
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method private getSyncStatusIcon(I)I
    .locals 4
    .param p1, "status"    # I

    .line 121
    packed-switch p1, :pswitch_data_0

    .line 133
    const v0, 0x7f08021b

    .line 134
    .local v0, "res":I
    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    .end local v0
    :pswitch_0    # 0x2
    const v0, 0x7f08021b

    .line 131
    .restart local v0
    goto :goto_0

    .line 127
    .end local v0
    :pswitch_1    # 0x1
    const v0, 0x7f080219

    .line 128
    .restart local v0
    goto :goto_0

    .line 124
    .end local v0
    :pswitch_2    # 0x3 0x0
    const v0, 0x7f0801fa

    .line 125
    .restart local v0
    nop

    .line 136
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
        :pswitch_2    # 0x3
    .end packed-switch
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 74
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 75
    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountPreference;->mShowTypeIcon:Z

    if-nez v0, :cond_0

    .line 76
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/accounts/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/accounts/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/AccountPreference;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    return-void
.end method
