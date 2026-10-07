.class public Lcom/android/settings/notification/HeaderPreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "HeaderPreferenceController.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mFragment:Landroid/support/v14/preference/PreferenceFragment;

.field private mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/support/v14/preference/PreferenceFragment;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mStarted:Z

    .line 48
    iput-object p2, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    .line 49
    return-void
.end method


# virtual methods
.method getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/HeaderPreferenceController;->isDefaultChannel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    .line 88
    :goto_0
    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "pref_app_header"

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/HeaderPreferenceController;->isDefaultChannel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    .line 98
    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 100
    .local v0, "summary":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    .line 101
    .local v1, "bidi":Landroid/text/BidiFormatter;
    iget-object v2, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 102
    iget-object v2, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f12095f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 104
    iget-object v2, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 105
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 107
    .end local v0
    .end local v1
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onStart()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mStarted:Z

    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->styleActionBar(Landroid/app/Activity;)Lcom/android/settings/widget/EntityHeaderController;

    .line 122
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 63
    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    if-eqz v0, :cond_1

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "activity":Landroid/app/Activity;
    iget-boolean v1, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mStarted:Z

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 71
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/settings/applications/LayoutPreference;

    .line 72
    .local v1, "pref":Lcom/android/settings/applications/LayoutPreference;
    iget-object v2, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    .line 73
    invoke-virtual {v2}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    const v4, 0x7f0a0169

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 72
    invoke-static {v2, v3, v5}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    .line 74
    iget-object v2, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v3, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/notification/HeaderPreferenceController;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/notification/HeaderPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    .line 77
    invoke-virtual {v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    .line 78
    invoke-virtual {v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setUid(I)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    const/4 v3, 0x1

    .line 79
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    .line 81
    invoke-virtual {v2, v5}, Lcom/android/settings/widget/EntityHeaderController;->setHasAppInfoLink(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/HeaderPreferenceController;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {v2, v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settings/applications/LayoutPreference;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v4}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method
