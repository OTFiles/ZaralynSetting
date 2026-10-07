.class Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "ColorModePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ColorModePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColorModeCandidateInfo"
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mLabel:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .line 155
    invoke-direct {p0, p3}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    .line 156
    iput-object p1, p0, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    .line 157
    iput-object p2, p0, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;->mKey:Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method
