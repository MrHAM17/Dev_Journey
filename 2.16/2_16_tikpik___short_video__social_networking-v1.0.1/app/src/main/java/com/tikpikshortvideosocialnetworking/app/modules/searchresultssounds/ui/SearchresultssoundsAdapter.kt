package com.tikpikshortvideosocialnetworking.app.modules.searchresultssounds.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowSearchresultssoundsBinding
import com.tikpikshortvideosocialnetworking.app.modules.searchresultssounds.`data`.model.SearchresultssoundsRowModel
import kotlin.Int
import kotlin.collections.List

class SearchresultssoundsAdapter(
  var list: List<SearchresultssoundsRowModel>
) : RecyclerView.Adapter<SearchresultssoundsAdapter.RowSearchresultssoundsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSearchresultssoundsVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_searchresultssounds,parent,false)
    return RowSearchresultssoundsVH(view)
  }

  override fun onBindViewHolder(holder: RowSearchresultssoundsVH, position: Int) {
    val searchresultssoundsRowModel = SearchresultssoundsRowModel()
    // TODO uncomment following line after integration with data source
    // val searchresultssoundsRowModel = list[position]
    holder.binding.searchresultssoundsRowModel = searchresultssoundsRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SearchresultssoundsRowModel>) {
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
      item: SearchresultssoundsRowModel
    ) {
    }
  }

  inner class RowSearchresultssoundsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSearchresultssoundsBinding = RowSearchresultssoundsBinding.bind(itemView)
  }
}
