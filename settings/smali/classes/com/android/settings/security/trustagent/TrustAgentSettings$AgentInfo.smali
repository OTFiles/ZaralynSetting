.class public final Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;
.super Ljava/lang/Object;
.source "TrustAgentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/trustagent/TrustAgentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AgentInfo"
.end annotation


# instance fields
.field component:Landroid/content/ComponentName;

.field public icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/CharSequence;

.field preference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 65
    instance-of v0, p1, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    move-object v1, p1

    check-cast v1, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;

    iget-object v1, v1, Lcom/android/settings/security/trustagent/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 68
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
