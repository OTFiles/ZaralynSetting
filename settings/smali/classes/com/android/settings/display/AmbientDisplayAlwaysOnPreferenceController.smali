.class public Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AmbientDisplayAlwaysOnPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;
    }
.end annotation


# static fields
.field private static final MY_USER:I


# instance fields
.field private final OFF:I

.field private final ON:I

.field private mCallback:Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;

.field private mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->MY_USER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->ON:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->OFF:I

    .line 47
    return-void
.end method

.method public static accessibilityInversionEnabled(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Z
    .locals 1
    .param p0, "config"    # Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 99
    sget v0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->MY_USER:I

    invoke-virtual {p0, v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->accessibilityInversionEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isAlwaysOnEnabled(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Z
    .locals 1
    .param p0, "config"    # Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 91
    sget v0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->MY_USER:I

    invoke-virtual {p0, v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isAvailable(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Z
    .locals 1
    .param p0, "config"    # Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 95
    sget v0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->MY_USER:I

    invoke-virtual {p0, v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnAvailableForUser(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-static {v0}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->isAvailable(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getResultPayload()Lcom/android/settings/search/ResultPayload;
    .locals 11

    .line 104
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/display/AmbientDisplaySettings;

    .line 105
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mContext:Landroid/content/Context;

    .line 106
    const v4, 0x7f1200ed

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/search/DatabaseIndexingUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/android/settings/search/InlineSwitchPayload;

    const-string v5, "doze_always_on"

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->isAvailable()Z

    move-result v9

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x1

    move-object v4, v1

    move-object v8, v0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/search/InlineSwitchPayload;-><init>(Ljava/lang/String;IILandroid/content/Intent;ZI)V

    .line 108
    return-object v1
.end method

.method public isChecked()Z
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    sget v1, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->MY_USER:I

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ambient_display_always_on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;)Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;
    .locals 0
    .param p1, "callback"    # Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;

    .line 86
    iput-object p1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mCallback:Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;

    .line 87
    return-object p0
.end method

.method public setChecked(Z)Z
    .locals 3
    .param p1, "isChecked"    # Z

    .line 69
    move v0, p1

    .line 70
    .local v0, "enabled":I
    iget-object v1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "doze_always_on"

    .line 70
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 72
    iget-object v1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mCallback:Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mCallback:Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;

    invoke-interface {v1}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;->onPreferenceChanged()V

    .line 75
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public setConfig(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;
    .locals 0
    .param p1, "config"    # Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 80
    iput-object p1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 81
    return-object p0
.end method
