.class public Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;
.super Landroid/text/style/ClickableSpan;
.source "EnterprisePrivacyFeatureProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EnterprisePrivacySpan"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 246
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;->mContext:Landroid/content/Context;

    .line 248
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 258
    instance-of v0, p1, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;

    iget-object v0, v0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;->mContext:Landroid/content/Context;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    .line 252
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ENTERPRISE_PRIVACY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 254
    return-void
.end method
