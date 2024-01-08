package com.tikpikshortvideosocialnetworking.app.modules.searchresultsusers.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowSearchresultsusersBinding
import com.tikpikshortvideosocialnetworking.app.modules.searchresultsusers.`data`.model.SearchresultsusersRowModel
import kotlin.Int
import kotlin.collections.List

class SearchresultsusersAdapter(
  var list: List<SearchresultsusersRowModel>
) : RecyclerView.Adapter<SearchresultsusersAdapter.RowSearchresultsusersVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSearchresultsusersVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_searchresultsusers,parent,false)
    return RowSearchresultsusersVH(view)
  }

  override fun onBindViewHolder(holder: RowSearchresultsusersVH, position: Int) {
    val searchresultsusersRowModel = SearchresultsusersRowModel()
    // TODO uncomment following line after integration with data source
    // val searchresultsusersRowModel = list[position]
    holder.binding.searchresultsusersRowModel = searchresultsusersRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SearchresultsusersRowModel>) {
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
      item: SearchresultsusersRowModel
    ) {
    }
  }

  inner class RowSearchresultsusersVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSearchresultsusersBinding = RowSearchresultsusersBinding.bind(itemView)
    init {
      binding.btnFollow.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, SearchresultsusersRowModel())
      }
    }
  }
}
