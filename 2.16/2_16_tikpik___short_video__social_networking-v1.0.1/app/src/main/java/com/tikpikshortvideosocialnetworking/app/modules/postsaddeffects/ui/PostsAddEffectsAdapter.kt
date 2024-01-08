package com.tikpikshortvideosocialnetworking.app.modules.postsaddeffects.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowPostsaddeffectsBinding
import com.tikpikshortvideosocialnetworking.app.modules.postsaddeffects.`data`.model.PostsaddeffectsRowModel
import kotlin.Int
import kotlin.collections.List

class PostsAddEffectsAdapter(
  var list: List<PostsaddeffectsRowModel>
) : RecyclerView.Adapter<PostsAddEffectsAdapter.RowPostsaddeffectsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPostsaddeffectsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_postsaddeffects,parent,false)
    return RowPostsaddeffectsVH(view)
  }

  override fun onBindViewHolder(holder: RowPostsaddeffectsVH, position: Int) {
    val postsaddeffectsRowModel = PostsaddeffectsRowModel()
    // TODO uncomment following line after integration with data source
    // val postsaddeffectsRowModel = list[position]
    holder.binding.postsaddeffectsRowModel = postsaddeffectsRowModel
  }

  override fun getItemCount(): Int = 7
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PostsaddeffectsRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: PostsaddeffectsRowModel
    ) {
    }
  }

  inner class RowPostsaddeffectsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPostsaddeffectsBinding = RowPostsaddeffectsBinding.bind(itemView)
  }
}
