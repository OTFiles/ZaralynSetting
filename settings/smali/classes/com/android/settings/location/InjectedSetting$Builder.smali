.class public Lcom/android/settings/location/InjectedSetting$Builder;
.super Ljava/lang/Object;
.source "InjectedSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/InjectedSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mIconId:I

.field private mPackageName:Ljava/lang/String;

.field private mSettingsActivity:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUserHandle:Landroid/os/UserHandle;

.field private mUserRestriction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/InjectedSetting$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/InjectedSetting$Builder;

    .line 134
    iget-object v0, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/location/InjectedSetting$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/InjectedSetting$Builder;

    .line 134
    iget-object v0, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/location/InjectedSetting$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/InjectedSetting$Builder;

    .line 134
    iget-object v0, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/location/InjectedSetting$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/InjectedSetting$Builder;

    .line 134
    iget v0, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mIconId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/location/InjectedSetting$Builder;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/InjectedSetting$Builder;

    .line 134
    iget-object v0, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/location/InjectedSetting$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/InjectedSetting$Builder;

    .line 134
    iget-object v0, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mSettingsActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/location/InjectedSetting$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/InjectedSetting$Builder;

    .line 134
    iget-object v0, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mUserRestriction:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/settings/location/InjectedSetting;
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mClassName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mSettingsActivity:Ljava/lang/String;

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    new-instance v0, Lcom/android/settings/location/InjectedSetting;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/location/InjectedSetting;-><init>(Lcom/android/settings/location/InjectedSetting$Builder;Lcom/android/settings/location/InjectedSetting$1;)V

    return-object v0

    .line 181
    :cond_1
    :goto_0
    const-string v0, "SettingsInjector"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    const-string v0, "SettingsInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal setting specification: package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", class="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", settingsActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mSettingsActivity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    return-object v1
.end method

.method public setClassName(Ljava/lang/String;)Lcom/android/settings/location/InjectedSetting$Builder;
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mClassName:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public setIconId(I)Lcom/android/settings/location/InjectedSetting$Builder;
    .locals 0
    .param p1, "iconId"    # I

    .line 159
    iput p1, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mIconId:I

    .line 160
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/settings/location/InjectedSetting$Builder;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mPackageName:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public setSettingsActivity(Ljava/lang/String;)Lcom/android/settings/location/InjectedSetting$Builder;
    .locals 0
    .param p1, "settingsActivity"    # Ljava/lang/String;

    .line 169
    iput-object p1, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mSettingsActivity:Ljava/lang/String;

    .line 170
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/android/settings/location/InjectedSetting$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 154
    iput-object p1, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mTitle:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/location/InjectedSetting$Builder;
    .locals 0
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 164
    iput-object p1, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mUserHandle:Landroid/os/UserHandle;

    .line 165
    return-object p0
.end method

.method public setUserRestriction(Ljava/lang/String;)Lcom/android/settings/location/InjectedSetting$Builder;
    .locals 0
    .param p1, "userRestriction"    # Ljava/lang/String;

    .line 174
    iput-object p1, p0, Lcom/android/settings/location/InjectedSetting$Builder;->mUserRestriction:Ljava/lang/String;

    .line 175
    return-object p0
.end method
