.class public Lcom/android/settings/AnyWantRemovedPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AnyWantRemovedPreferenceController.java"


# instance fields
.field private isDefaultVisiable:Z

.field private mContext:Landroid/content/Context;

.field private mKeyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyName"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/AnyWantRemovedPreferenceController;->mKeyName:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AnyWantRemovedPreferenceController;->isDefaultVisiable:Z

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AnyWantRemovedPreferenceController;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/android/settings/AnyWantRemovedPreferenceController;->mKeyName:Ljava/lang/String;

    .line 30
    iput-boolean v0, p0, Lcom/android/settings/AnyWantRemovedPreferenceController;->isDefaultVisiable:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyName"    # Ljava/lang/String;
    .param p3, "defaultVisiable"    # Z

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/AnyWantRemovedPreferenceController;->mKeyName:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AnyWantRemovedPreferenceController;->isDefaultVisiable:Z

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AnyWantRemovedPreferenceController;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/settings/AnyWantRemovedPreferenceController;->mKeyName:Ljava/lang/String;

    .line 37
    iput-boolean p3, p0, Lcom/android/settings/AnyWantRemovedPreferenceController;->isDefaultVisiable:Z

    .line 38
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/settings/AnyWantRemovedPreferenceController;->mKeyName:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/android/settings/AnyWantRemovedPreferenceController;->isDefaultVisiable:Z

    return v0
.end method
