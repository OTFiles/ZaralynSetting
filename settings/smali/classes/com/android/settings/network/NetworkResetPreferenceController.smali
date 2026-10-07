.class public Lcom/android/settings/network/NetworkResetPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "NetworkResetPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mRestrictionChecker:Lcom/android/settings/network/NetworkResetRestrictionChecker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/android/settings/network/NetworkResetRestrictionChecker;

    invoke-direct {v0, p1}, Lcom/android/settings/network/NetworkResetRestrictionChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkResetPreferenceController;->mRestrictionChecker:Lcom/android/settings/network/NetworkResetRestrictionChecker;

    .line 32
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "network_reset_pref"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/settings/network/NetworkResetPreferenceController;->mRestrictionChecker:Lcom/android/settings/network/NetworkResetRestrictionChecker;

    invoke-virtual {v0}, Lcom/android/settings/network/NetworkResetRestrictionChecker;->hasUserRestriction()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
