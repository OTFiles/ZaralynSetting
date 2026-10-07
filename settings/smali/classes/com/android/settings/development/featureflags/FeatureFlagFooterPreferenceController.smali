.class public Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FeatureFlagFooterPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;


# instance fields
.field private mFooterMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    const-string v0, "feature_flag_footer_pref"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;->mFooterMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    .line 48
    const v1, 0x7f120607

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 49
    return-void
.end method

.method public setFooterMixin(Lcom/android/settingslib/widget/FooterPreferenceMixin;)V
    .locals 0
    .param p1, "mixin"    # Lcom/android/settingslib/widget/FooterPreferenceMixin;

    .line 37
    iput-object p1, p0, Lcom/android/settings/development/featureflags/FeatureFlagFooterPreferenceController;->mFooterMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    .line 38
    return-void
.end method
