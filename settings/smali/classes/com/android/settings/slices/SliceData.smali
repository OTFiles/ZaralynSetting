.class public Lcom/android/settings/slices/SliceData;
.super Ljava/lang/Object;
.source "SliceData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/slices/SliceData$InvalidSliceDataException;,
        Lcom/android/settings/slices/SliceData$Builder;
    }
.end annotation


# instance fields
.field private final mFragmentClassName:Ljava/lang/String;

.field private final mIconResource:I

.field private final mIsPlatformDefined:Z

.field private final mKey:Ljava/lang/String;

.field private final mKeywords:Ljava/lang/String;

.field private final mPreferenceController:Ljava/lang/String;

.field private final mScreenTitle:Ljava/lang/CharSequence;

.field private final mSliceType:I

.field private final mSummary:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/android/settings/slices/SliceData$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/settings/slices/SliceData$Builder;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$000(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    .line 124
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$100(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mTitle:Ljava/lang/String;

    .line 125
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$200(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mSummary:Ljava/lang/String;

    .line 126
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$300(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mScreenTitle:Ljava/lang/CharSequence;

    .line 127
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$400(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mKeywords:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$500(Lcom/android/settings/slices/SliceData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/slices/SliceData;->mIconResource:I

    .line 129
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$600(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mFragmentClassName:Ljava/lang/String;

    .line 130
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$700(Lcom/android/settings/slices/SliceData$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mUri:Landroid/net/Uri;

    .line 131
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$800(Lcom/android/settings/slices/SliceData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mPreferenceController:Ljava/lang/String;

    .line 132
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$900(Lcom/android/settings/slices/SliceData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/slices/SliceData;->mSliceType:I

    .line 133
    invoke-static {p1}, Lcom/android/settings/slices/SliceData$Builder;->access$1000(Lcom/android/settings/slices/SliceData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/slices/SliceData;->mIsPlatformDefined:Z

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/slices/SliceData$Builder;Lcom/android/settings/slices/SliceData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/slices/SliceData$Builder;
    .param p2, "x1"    # Lcom/android/settings/slices/SliceData$1;

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings/slices/SliceData;-><init>(Lcom/android/settings/slices/SliceData$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 143
    instance-of v0, p1, Lcom/android/settings/slices/SliceData;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    return v0

    .line 146
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/slices/SliceData;

    .line 147
    .local v0, "newObject":Lcom/android/settings/slices/SliceData;
    iget-object v1, p0, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public getFragmentClassName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/settings/slices/SliceData;->mFragmentClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/android/settings/slices/SliceData;->mIconResource:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/settings/slices/SliceData;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferenceController()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/settings/slices/SliceData;->mPreferenceController:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/settings/slices/SliceData;->mScreenTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSliceType()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/android/settings/slices/SliceData;->mSliceType:I

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settings/slices/SliceData;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/slices/SliceData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/settings/slices/SliceData;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPlatformDefined()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/android/settings/slices/SliceData;->mIsPlatformDefined:Z

    return v0
.end method
