.class public Lcom/readboy/provider/mhc/info/DbConstants;
.super Ljava/lang/Object;
.source "DbConstants.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.readboy.personal.personalProvider"

.field public static final BOOK_CLASS_TABLE:Ljava/lang/String; = "mhc_book_class_data"

.field public static final B_BLOB:Ljava/lang/String; = "imageStr"

.field public static final B_BOOK_GRADE_ID:Ljava/lang/String; = "bookGradeId"

.field public static final B_BOOK_ID:Ljava/lang/String; = "bookId"

.field public static final B_BOOK_NAME:Ljava/lang/String; = "bookName"

.field public static final B_BOOK_SUB_ID:Ljava/lang/String; = "bookSubId"

.field public static final B_CHAPTER_ID:Ljava/lang/String; = "chapterId"

.field public static final B_CHAPTER_INDEX:Ljava/lang/String; = "chapterIndex"

.field public static final B_CHAPTER_NAME:Ljava/lang/String; = "chapterName"

.field public static final B_CLASSID:Ljava/lang/String; = "classId"

.field public static final B_CLASSNAME:Ljava/lang/String; = "className"

.field public static final B_COVER_PATH:Ljava/lang/String; = "coverPath"

.field public static final B_EDITION_ID:Ljava/lang/String; = "editionId"

.field public static final B_EDITION_NAME:Ljava/lang/String; = "editionName"

.field public static final B_ID:Ljava/lang/String; = "id"

.field public static final B_PUBID:Ljava/lang/String; = "publishId"

.field public static final B_PUBNAME:Ljava/lang/String; = "publishName"

.field public static final B_SECTION_ID:Ljava/lang/String; = "sectionId"

.field public static final B_SECTION_INDEX:Ljava/lang/String; = "sectionIndex"

.field public static final B_SECTION_NAME:Ljava/lang/String; = "sectionName"

.field public static final B_SEMESTER_ID:Ljava/lang/String; = "semesterId"

.field public static final B_SUBJECT_VISIBLE:Ljava/lang/String; = "subjectVisible"

.field public static final PKGNAME:Ljava/lang/String; = "com.readboy.personalsetting"

.field public static final S_CITYID:Ljava/lang/String; = "cityId"

.field public static final S_CITYSTR:Ljava/lang/String; = "cityStr"

.field public static final S_DISTRICTID:Ljava/lang/String; = "districtId"

.field public static final S_DISTRICTSTR:Ljava/lang/String; = "districtStr"

.field public static final S_GRADE:Ljava/lang/String; = "grade"

.field public static final S_GRADESTR:Ljava/lang/String; = "gradeStr"

.field public static final S_ID:Ljava/lang/String; = "id"

.field public static final S_PROVINCEID:Ljava/lang/String; = "provinceId"

.field public static final S_PROVINCESTR:Ljava/lang/String; = "provStr"

.field public static final S_SCHOOLID:Ljava/lang/String; = "schoolId"

.field public static final S_SCHOOLNAME:Ljava/lang/String; = "schoolName"

.field public static final S_STAGE:Ljava/lang/String; = "stage"

.field public static final S_UID:Ljava/lang/String; = "uid"

.field public static final T_BEAN:Ljava/lang/String; = "bean"

.field public static final T_BIRTH_DAY:Ljava/lang/String; = "birth_d"

.field public static final T_BIRTH_MONTH:Ljava/lang/String; = "birth_m"

.field public static final T_BIRTH_YEAR:Ljava/lang/String; = "birth_y"

.field public static final T_BLOB:Ljava/lang/String; = "imageStr"

.field public static final T_CITYID:Ljava/lang/String; = "city"

.field public static final T_CITYSTR:Ljava/lang/String; = "cityStr"

.field public static final T_CLASS_TOKEN:Ljava/lang/String; = "classToken"

.field public static final T_DISTRICT:Ljava/lang/String; = "district"

.field public static final T_GENDER:Ljava/lang/String; = "gender"

.field public static final T_GENDERSTR:Ljava/lang/String; = "genderStr"

.field public static final T_GRADE:Ljava/lang/String; = "grade"

.field public static final T_GRADE_ORG:Ljava/lang/String; = "grade_org"

.field public static final T_ID:Ljava/lang/String; = "id"

.field public static final T_MOBILE:Ljava/lang/String; = "mobile"

.field public static final T_MONEY:Ljava/lang/String; = "money"

.field public static final T_PHOTO_URI:Ljava/lang/String; = "photoUri"

.field public static final T_PROVINCEID:Ljava/lang/String; = "province"

.field public static final T_PROVSTR:Ljava/lang/String; = "provStr"

.field public static final T_PW:Ljava/lang/String; = "password"

.field public static final T_REALNAME:Ljava/lang/String; = "realname"

.field public static final T_REGDATE:Ljava/lang/String; = "regdate"

.field public static final T_SCHID:Ljava/lang/String; = "school"

.field public static final T_SCHSTR:Ljava/lang/String; = "schoolStr"

.field public static final T_TOKEN:Ljava/lang/String; = "accessToken"

.field public static final T_TOKEN_EXPIRE:Ljava/lang/String; = "accessTokenExpire"

.field public static final T_UID:Ljava/lang/String; = "uid"

.field public static final T_UID_PARENT:Ljava/lang/String; = "uid_parent"

.field public static final T_UID_STR:Ljava/lang/String; = "uid_str"

.field public static final T_USERNAME:Ljava/lang/String; = "username"

.field public static final USERINFO_TABLE:Ljava/lang/String; = "mhc_user_info_data"

.field public static final USER_BOOKS_TABLE:Ljava/lang/String; = "mhc_user_books_data"

.field public static final USER_INFO_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-string v0, "content://com.readboy.personal.personalProvider/mhc_user_info_data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/readboy/provider/mhc/info/DbConstants;->USER_INFO_CONTENT_URI:Landroid/net/Uri;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
