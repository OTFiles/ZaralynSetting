.class Lcom/android/settings/development/ColorModePreference$ColorModeDescription;
.super Ljava/lang/Object;
.source "ColorModePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/ColorModePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorModeDescription"
.end annotation


# instance fields
.field private colorMode:I

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/development/ColorModePreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/development/ColorModePreference$1;

    .line 126
    invoke-direct {p0}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/ColorModePreference$ColorModeDescription;

    .line 126
    iget v0, p0, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->colorMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/development/ColorModePreference$ColorModeDescription;
    .param p1, "x1"    # I

    .line 126
    iput p1, p0, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->colorMode:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/development/ColorModePreference$ColorModeDescription;
    .param p1, "x1"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/development/ColorModePreference$ColorModeDescription;
    .param p1, "x1"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->summary:Ljava/lang/String;

    return-object p1
.end method
