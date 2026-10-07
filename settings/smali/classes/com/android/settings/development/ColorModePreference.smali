.class public Lcom/android/settings/development/ColorModePreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "ColorModePreference.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/ColorModePreference$ColorModeDescription;
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/development/ColorModePreference$ColorModeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplay:Landroid/view/Display;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 65
    return-void
.end method

.method public static getColorModeDescriptions(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/development/ColorModePreference$ColorModeDescription;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "colorModeDescriptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/development/ColorModePreference$ColorModeDescription;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 45
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f03003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 46
    .local v2, "colorModes":[I
    const v3, 0x7f03003d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "titles":[Ljava/lang/String;
    const v4, 0x7f03003b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "descriptions":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 50
    aget v6, v2, v5

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 51
    new-instance v6, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;-><init>(Lcom/android/settings/development/ColorModePreference$1;)V

    .line 52
    .local v6, "desc":Lcom/android/settings/development/ColorModePreference$ColorModeDescription;
    aget v7, v2, v5

    invoke-static {v6, v7}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->access$102(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;I)I

    .line 53
    aget-object v7, v3, v5

    invoke-static {v6, v7}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->access$202(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    aget-object v7, v4, v5

    invoke-static {v6, v7}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->access$302(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v6
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 59
    .end local v5
    :cond_1
    return-object v0
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 81
    if-nez p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->updateCurrentAndSupported()V

    .line 84
    :cond_0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 88
    if-nez p1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->updateCurrentAndSupported()V

    .line 91
    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 95
    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 3
    .param p1, "value"    # Z

    .line 116
    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;

    .line 119
    .local v0, "desc":Lcom/android/settings/development/ColorModePreference$ColorModeDescription;
    iget-object v1, p0, Lcom/android/settings/development/ColorModePreference;->mDisplay:Landroid/view/Display;

    invoke-static {v0}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->access$100(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Display;->requestColorMode(I)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/development/ColorModePreference;->mCurrentIndex:I

    .line 123
    .end local v0
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public startListening()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 73
    return-void
.end method

.method public stopListening()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 77
    return-void
.end method

.method public updateCurrentAndSupported()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplay:Landroid/view/Display;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/development/ColorModePreference;->getColorModeDescriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    .line 102
    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getColorMode()I

    move-result v0

    .line 103
    .local v0, "currentColorMode":I
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/development/ColorModePreference;->mCurrentIndex:I

    .line 104
    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 105
    iget-object v3, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;

    invoke-static {v3}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->access$100(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 106
    iput v2, p0, Lcom/android/settings/development/ColorModePreference;->mCurrentIndex:I

    .line 107
    goto :goto_1

    .line 104
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .end local v2
    :cond_1
    :goto_1
    iget v2, p0, Lcom/android/settings/development/ColorModePreference;->mCurrentIndex:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move v1, v3

    nop

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settings/development/ColorModePreference;->setChecked(Z)V

    .line 111
    return-void
.end method
