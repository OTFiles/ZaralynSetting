.class public Lcom/android/settings/utils/SettingsDividerItemDecoration;
.super Lcom/android/setupwizardlib/DividerItemDecoration;
.source "SettingsDividerItemDecoration.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected isDividerAllowedAbove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 33
    instance-of v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;

    if-eqz v0, :cond_0

    .line 34
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/PreferenceViewHolder;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceViewHolder;->isDividerAllowedAbove()Z

    move-result v0

    return v0

    .line 36
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/DividerItemDecoration;->isDividerAllowedAbove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method protected isDividerAllowedBelow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 41
    instance-of v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;

    if-eqz v0, :cond_0

    .line 42
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/PreferenceViewHolder;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceViewHolder;->isDividerAllowedBelow()Z

    move-result v0

    return v0

    .line 44
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/DividerItemDecoration;->isDividerAllowedBelow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method
