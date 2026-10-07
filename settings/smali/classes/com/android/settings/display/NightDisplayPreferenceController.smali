.class public Lcom/android/settings/display/NightDisplayPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "NightDisplayPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplayPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 31
    return-void
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 37
    .local v0, "isEnabled":Z
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 38
    return v1

    .line 40
    :cond_0
    new-instance v2, Lcom/android/internal/app/ColorDisplayController;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;)V

    .line 41
    .local v2, "controller":Lcom/android/internal/app/ColorDisplayController;
    invoke-virtual {v2}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "night_display"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/ColorDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
