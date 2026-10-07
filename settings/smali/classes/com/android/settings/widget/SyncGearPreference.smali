.class public Lcom/android/settings/widget/SyncGearPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "SyncGearPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SyncGearPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mOnGearClickListener:Lcom/android/settings/widget/SyncGearPreference$OnGearClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 1

    .line 45
    const v0, 0x7f0d0160

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 55
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 56
    const v0, 0x7f0a03c3

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "gear":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/widget/SyncGearPreference;->mOnGearClickListener:Lcom/android/settings/widget/SyncGearPreference$OnGearClickListener;

    if-eqz v1, :cond_0

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 61
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 65
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a03c3

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/widget/SyncGearPreference;->mOnGearClickListener:Lcom/android/settings/widget/SyncGearPreference$OnGearClickListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/settings/widget/SyncGearPreference;->mOnGearClickListener:Lcom/android/settings/widget/SyncGearPreference$OnGearClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings/widget/SyncGearPreference$OnGearClickListener;->onGearClick(Lcom/android/settings/widget/SyncGearPreference;)V

    .line 74
    :cond_0
    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/settings/widget/SyncGearPreference;->mOnGearClickListener:Lcom/android/settings/widget/SyncGearPreference$OnGearClickListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
